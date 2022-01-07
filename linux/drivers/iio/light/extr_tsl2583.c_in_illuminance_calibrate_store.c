
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2583_chip {int als_mutex; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsl2583_als_calibrate (struct iio_dev*) ;

__attribute__((used)) static ssize_t in_illuminance_calibrate_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct tsl2583_chip *chip = iio_priv(indio_dev);
 int value, ret;

 if (kstrtoint(buf, 0, &value) || value != 1)
  return -EINVAL;

 mutex_lock(&chip->als_mutex);

 ret = tsl2583_als_calibrate(indio_dev);
 if (ret < 0)
  goto done;

 ret = len;
done:
 mutex_unlock(&chip->als_mutex);

 return ret;
}
