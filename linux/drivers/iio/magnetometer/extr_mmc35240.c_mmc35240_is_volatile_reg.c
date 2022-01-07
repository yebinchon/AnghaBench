
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;





__attribute__((used)) static bool mmc35240_is_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 129:
 case 128:
  return 0;
 default:
  return 1;
 }
}
