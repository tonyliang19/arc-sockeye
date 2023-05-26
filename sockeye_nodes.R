library(tidyverse)
sock_names <- c("Nodes", "Type", "CPU", "Total Cores", "Architecture",
                "System Memory", "Mem per Core", "Local Storage", "General Purpose GPU")
data <- read.delim("data.txt", header=FALSE,
                   sep="\t", col.names = sock_names) %>% as.data.frame()
write.csv(data, "./sockeye_nodes.csv",row.names = FALSE)

