
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9611_dev {int shunt_resistor_uohm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_to_iio_dev (struct device*) ;
 struct max9611_dev* iio_priv (int ) ;
 int sprintf (char*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static ssize_t max9611_shunt_resistor_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct max9611_dev *max9611 = iio_priv(dev_to_iio_dev(dev));
 unsigned int i, r;

 i = max9611->shunt_resistor_uohm / 1000000;
 r = max9611->shunt_resistor_uohm % 1000000;

 return sprintf(buf, "%u.%06u\n", i, r);
}
