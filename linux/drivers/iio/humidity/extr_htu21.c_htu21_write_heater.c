
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_ht_dev {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ms_ht_dev* iio_priv (struct iio_dev*) ;
 int ms_sensors_write_heater (struct ms_ht_dev*,char const*,size_t) ;

__attribute__((used)) static ssize_t htu21_write_heater(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ms_ht_dev *dev_data = iio_priv(indio_dev);

 return ms_sensors_write_heater(dev_data, buf, len);
}
