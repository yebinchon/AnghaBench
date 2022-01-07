
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int allow_async_readout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_to_iio_dev (struct device*) ;
 struct ina2xx_chip_info* iio_priv (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ina2xx_allow_async_readout_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct ina2xx_chip_info *chip = iio_priv(dev_to_iio_dev(dev));

 return sprintf(buf, "%d\n", chip->allow_async_readout);
}
