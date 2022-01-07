
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_hrtimer_info {unsigned long sampling_frequency; unsigned long period; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned long NSEC_PER_SEC ;
 struct iio_hrtimer_info* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static
ssize_t iio_hrtimer_store_sampling_frequency(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t len)
{
 struct iio_trigger *trig = to_iio_trigger(dev);
 struct iio_hrtimer_info *info = iio_trigger_get_drvdata(trig);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 if (!val || val > NSEC_PER_SEC)
  return -EINVAL;

 info->sampling_frequency = val;
 info->period = NSEC_PER_SEC / val;

 return len;
}
