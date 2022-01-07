
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int prox_scheme; int lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoint (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t proximity_on_chip_ambient_infrared_suppression_store
   (struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct isl29018_chip *chip = iio_priv(indio_dev);
 int val;

 if (kstrtoint(buf, 10, &val))
  return -EINVAL;
 if (!(val == 0 || val == 1))
  return -EINVAL;





 mutex_lock(&chip->lock);
 chip->prox_scheme = val;
 mutex_unlock(&chip->lock);

 return count;
}
