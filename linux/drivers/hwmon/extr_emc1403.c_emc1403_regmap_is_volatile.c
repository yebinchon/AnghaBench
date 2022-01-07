
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool emc1403_regmap_is_volatile(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 0x00:
 case 0x01:
 case 0x02:
 case 0x10:
 case 0x1b:
 case 0x23:
 case 0x24:
 case 0x29:
 case 0x2a:
 case 0x2b:
 case 0x35:
 case 0x36:
 case 0x37:
  return 1;
 default:
  return 0;
 }
}
