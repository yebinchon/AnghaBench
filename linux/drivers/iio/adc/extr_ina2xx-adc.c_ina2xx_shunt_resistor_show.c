
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int shunt_resistor_uohm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IIO_VAL_FRACTIONAL ;
 int dev_to_iio_dev (struct device*) ;
 int iio_format_value (char*,int ,int,int*) ;
 struct ina2xx_chip_info* iio_priv (int ) ;

__attribute__((used)) static ssize_t ina2xx_shunt_resistor_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct ina2xx_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
 int vals[2] = { chip->shunt_resistor_uohm, 1000000 };

 return iio_format_value(buf, IIO_VAL_FRACTIONAL, 1, vals);
}
