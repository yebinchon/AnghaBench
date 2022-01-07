
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srf08_data {int range_mm; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct srf08_data* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t srf08_show_range_mm(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct srf08_data *data = iio_priv(indio_dev);

 return sprintf(buf, "%d.%03d\n", data->range_mm / 1000,
      data->range_mm % 1000);
}
