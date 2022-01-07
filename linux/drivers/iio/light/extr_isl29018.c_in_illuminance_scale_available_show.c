
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct isl29018_chip {size_t int_time; int lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int scale; int uscale; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 TYPE_1__** isl29018_scales ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t in_illuminance_scale_available_show
   (struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct isl29018_chip *chip = iio_priv(indio_dev);
 unsigned int i;
 int len = 0;

 mutex_lock(&chip->lock);
 for (i = 0; i < ARRAY_SIZE(isl29018_scales[chip->int_time]); ++i)
  len += sprintf(buf + len, "%d.%06d ",
          isl29018_scales[chip->int_time][i].scale,
          isl29018_scales[chip->int_time][i].uscale);
 mutex_unlock(&chip->lock);

 buf[len - 1] = '\n';

 return len;
}
