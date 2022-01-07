
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rescale {int numerator; int denominator; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 int gcd (int,int) ;

__attribute__((used)) static int rescale_current_sense_shunt_props(struct device *dev,
          struct rescale *rescale)
{
 u32 shunt;
 u32 factor;
 int ret;

 ret = device_property_read_u32(dev, "shunt-resistor-micro-ohms",
           &shunt);
 if (ret) {
  dev_err(dev, "failed to read the shunt resistance: %d\n", ret);
  return ret;
 }

 factor = gcd(shunt, 1000000);
 rescale->numerator = 1000000 / factor;
 rescale->denominator = shunt / factor;

 return 0;
}
