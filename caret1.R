library(kernlab)
data(spam)
head(spam)
tail(spam)
plot(density(spam$your[spam$type=='nonspam']),col="blue",main="",xlab = 'frequency of your')
lines(density(spam$your[spam$type=='spam']),col= "red")
abline(v=0.5, col ='black')
prediction = ifelse(spam$your > 0.5,"spam","nonspam")
table(prediction,spam$type)/length(spam$type)
library(caret)
intrain <-createDataPartition(y = spam$type,p = 0.75,list = FALSE)
spam_training = spam[intrain,]
spam_test <- spam[-intrain,]
dim(spam_training)
# modeling
set.seed(1971)


modelFit$finalModel

prediction <- predict(modelFit,newdata=spam_test)
prediction
confusionMatrix(prediction,spam_test$type)
