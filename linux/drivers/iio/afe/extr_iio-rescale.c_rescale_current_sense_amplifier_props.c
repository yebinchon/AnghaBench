
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

__attribute__((used)) static int rescale_current_sense_amplifier_props(struct device *dev,
       struct rescale *rescale)
{
 u32 sense;
 u32 gain_mult = 1;
 u32 gain_div = 1;
 u32 factor;
 int ret;

 ret = device_property_read_u32(dev, "sense-resistor-micro-ohms",
           &sense);
 if (ret) {
  dev_err(dev, "failed to read the sense resistance: %d\n", ret);
  return ret;
 }

 device_property_read_u32(dev, "sense-gain-mult", &gain_mult);
 device_property_read_u32(dev, "sense-gain-div", &gain_div);






 factor = gcd(sense, 1000000);
 rescale->numerator = 1000000 / factor;
 rescale->denominator = sense / factor;

 factor = gcd(rescale->numerator, gain_mult);
 rescale->numerator /= factor;
 rescale->denominator *= gain_mult / factor;

 factor = gcd(rescale->denominator, gain_div);
 rescale->numerator *= gain_div / factor;
 rescale->denominator /= factor;

 return 0;
}
