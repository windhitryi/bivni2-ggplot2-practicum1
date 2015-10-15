##################################################################
### лабораторная работа ggplot2:  Часть вторая лабораторная работа
### университета Колорадо 
##################################################################

film_death_counts <- read.csv(file="film_death_counts.csv",header = T)

library(ggplot2)

head(film_death_counts)



ggplot()+ geom_point(data=film_death_counts,mapping = aes(x=Year, y=IMDB_Rating, 
                                                  color=MPAA_Rating)) + ylab("Average IMDB Rating") 

ggplot()+  geom_smooth(data=film_death_counts,mapping = aes(x=Year, y=IMDB_Rating))+ ylab("Average IMDB Rating")
                                                           

ggplot(data = film_death_counts, aes(x=Body_Count))+ geom_histogram()+ 
  facet_grid(.~MPAA_Rating)+  scale_y_sqrt()+ 
  xlab("Number of Deaths")+  ylab("Number of Films")
