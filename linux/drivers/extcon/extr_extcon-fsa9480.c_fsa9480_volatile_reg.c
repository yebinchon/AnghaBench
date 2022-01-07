
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




__attribute__((used)) static bool fsa9480_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 128:
  return 1;
 default:
  break;
 }
 return 0;
}
