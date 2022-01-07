
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int als_cal_target; } ;
struct tsl2583_chip {int als_mutex; TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t in_illuminance_input_target_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct tsl2583_chip *chip = iio_priv(indio_dev);
 int ret;

 mutex_lock(&chip->als_mutex);
 ret = sprintf(buf, "%d\n", chip->als_settings.als_cal_target);
 mutex_unlock(&chip->als_mutex);

 return ret;
}
