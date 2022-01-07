
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int prox_scheme; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t proximity_on_chip_ambient_infrared_suppression_show
   (struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct isl29018_chip *chip = iio_priv(indio_dev);





 return sprintf(buf, "%d\n", chip->prox_scheme);
}
