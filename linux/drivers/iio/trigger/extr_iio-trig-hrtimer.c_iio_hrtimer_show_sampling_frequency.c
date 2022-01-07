
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_hrtimer_info {int sampling_frequency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iio_hrtimer_info* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int snprintf (char*,int ,char*,int ) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static
ssize_t iio_hrtimer_show_sampling_frequency(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_trigger *trig = to_iio_trigger(dev);
 struct iio_hrtimer_info *info = iio_trigger_get_drvdata(trig);

 return snprintf(buf, PAGE_SIZE, "%lu\n", info->sampling_frequency);
}
