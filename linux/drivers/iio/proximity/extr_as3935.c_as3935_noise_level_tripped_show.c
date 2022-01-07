
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct as3935_state {int lock; scalar_t__ noise_tripped; } ;
typedef int ssize_t ;


 scalar_t__ HZ ;
 int dev_to_iio_dev (struct device*) ;
 struct as3935_state* iio_priv (int ) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static ssize_t as3935_noise_level_tripped_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct as3935_state *st = iio_priv(dev_to_iio_dev(dev));
 int ret;

 mutex_lock(&st->lock);
 ret = sprintf(buf, "%d\n", !time_after(jiffies, st->noise_tripped + HZ));
 mutex_unlock(&st->lock);

 return ret;
}
