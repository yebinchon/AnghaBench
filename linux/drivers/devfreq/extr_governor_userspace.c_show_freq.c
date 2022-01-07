
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userspace_data {int user_frequency; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int lock; struct userspace_data* data; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,...) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t show_freq(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct devfreq *devfreq = to_devfreq(dev);
 struct userspace_data *data;
 int err = 0;

 mutex_lock(&devfreq->lock);
 data = devfreq->data;

 if (data->valid)
  err = sprintf(buf, "%lu\n", data->user_frequency);
 else
  err = sprintf(buf, "undefined\n");
 mutex_unlock(&devfreq->lock);
 return err;
}
