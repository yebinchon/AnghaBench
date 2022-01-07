
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adis16136 {int dummy; } ;
typedef int ssize_t ;


 int adis16136_get_freq (struct adis16136*,unsigned int*) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adis16136* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t adis16136_read_frequency(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct adis16136 *adis16136 = iio_priv(indio_dev);
 unsigned int freq;
 int ret;

 ret = adis16136_get_freq(adis16136, &freq);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", freq);
}
