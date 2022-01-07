
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int client_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct dma_chan* dev_to_dma_chan (struct device*) ;
 int dma_list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t in_use_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct dma_chan *chan;
 int err;

 mutex_lock(&dma_list_mutex);
 chan = dev_to_dma_chan(dev);
 if (chan)
  err = sprintf(buf, "%d\n", chan->client_count);
 else
  err = -ENODEV;
 mutex_unlock(&dma_list_mutex);

 return err;
}
