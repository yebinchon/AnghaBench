
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userspace_data {unsigned long user_frequency; int valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int lock; struct userspace_data* data; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*) ;
 struct devfreq* to_devfreq (struct device*) ;
 int update_devfreq (struct devfreq*) ;

__attribute__((used)) static ssize_t store_freq(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct devfreq *devfreq = to_devfreq(dev);
 struct userspace_data *data;
 unsigned long wanted;
 int err = 0;

 mutex_lock(&devfreq->lock);
 data = devfreq->data;

 sscanf(buf, "%lu", &wanted);
 data->user_frequency = wanted;
 data->valid = 1;
 err = update_devfreq(devfreq);
 if (err == 0)
  err = count;
 mutex_unlock(&devfreq->lock);
 return err;
}
