
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
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t in_illuminance_input_target_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct tsl2583_chip *chip = iio_priv(indio_dev);
 int value;

 if (kstrtoint(buf, 0, &value) || !value)
  return -EINVAL;

 mutex_lock(&chip->als_mutex);
 chip->als_settings.als_cal_target = value;
 mutex_unlock(&chip->als_mutex);

 return len;
}
