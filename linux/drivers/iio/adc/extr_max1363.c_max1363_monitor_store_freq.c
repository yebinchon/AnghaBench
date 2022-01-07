
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {int monitor_speed; } ;
struct iio_dev {int mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (unsigned long*) ;
 int EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 unsigned long* max1363_monitor_speeds ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t max1363_monitor_store_freq(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct max1363_state *st = iio_priv(indio_dev);
 int i, ret;
 unsigned long val;
 bool found = 0;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return -EINVAL;
 for (i = 0; i < ARRAY_SIZE(max1363_monitor_speeds); i++)
  if (val == max1363_monitor_speeds[i]) {
   found = 1;
   break;
  }
 if (!found)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);
 st->monitor_speed = i;
 mutex_unlock(&indio_dev->mlock);

 return 0;
}
