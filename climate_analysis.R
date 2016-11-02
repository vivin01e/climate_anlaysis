#Climate Analysis Tools
#Using temperature conversion functions from library temerature_conversion.
source("temp_conversion.R")

options(echo=TRUE) # if you want see commands in output file

climate_data <- read.table("../data/sc_climate_data_10.csv", sep = ",")

climate_data

# extract our max temperature in Fahrenheit - 4th column
fahr <- climate_data[4]

fahr
typeof(fahr)
# don't process invalid temperature readings of -9999
for (temp in fahr){
  if(fahr != -9999){
    celsius<-fahr_to_celsius(fahr)
    kelvin<-fahr_to_kelvin(fahr)
    print(paste("Celsius temperatures: ",celsius))
    print(", ")
    print(paste("Fahrenheit temperatures: ",kelvin))
  }  
}
