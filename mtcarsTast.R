#install packege
install.packages("ggplot2")
install.packages("dplyr")
library(dplyr)
library(ggplot2)

#dataset mtcars
#am  Transmission (0 = automatic, 1 = manual)
tibble::as_tibble(mtcars)
df <- tibble::as_tibble(mtcars)
summary(df)
str(df)

#plotgraph1
a <- ggplot(df , aes(mpg,hp)) 
a + geom_point(size = 3.5,aes(colour = factor(am)))          + geom_line(aes(colour = factor(am))) + labs(x="Mile Pre Gallon", y="Horsepower",title="HP by MPG") + theme_minimal()
 
#plotgraph2
b <- ggplot(df, aes(cyl))  
b + geom_dotplot(aes(colour = factor(am))) + labs(x="Cylinders",y="Percentage",title="Percentage of Cylinders") + theme_minimal() 

#dataset mpg
mpg <- mpg
tibble::as_tibble(mpg)
str(mpg)

#plotgraph3
c <- ggplot(mpg,aes(fl,fill = class))
c + geom_bar(position = "stack")  + labs(x="Fuel type",y="Count",title="Vehicle type in Fuel type") + theme_minimal()

#plotgraph4
d <- ggplot(mpg,aes(displ,cty))
d + geom_point(aes(colour = factor(class), size = fl),alpha = 0.5) + geom_smooth(methon = lm) + labs(x="Engine displacement",y="City mileage",title="cty by displ") + theme_minimal() 


