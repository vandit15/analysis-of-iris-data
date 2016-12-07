# Uses caret package
plot-data <- function(data)
{
  dataset = data[1]
  validation = data[2]
  
  
  # split input and output of plots
  x <- dataset[,1:4]
  y <- dataset[,5]
  
  input<- readline(prompt = "Enter 1 for ellipse scatterplot and 2 for density plot")
  if(input=="1"){
    # scatterplot matrix
    featurePlot(x=x, y=y, plot="ellipse")
  }
  else
  {
    # density plots for each attribute by class value
    scales <- list(x=list(relation="free"), y=list(relation="free"))
    featurePlot(x=x, y=y, plot="density", scales=scales) 
  }
  
}