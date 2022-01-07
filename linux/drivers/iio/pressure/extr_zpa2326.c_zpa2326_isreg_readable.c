
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
bool zpa2326_isreg_readable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 134:
 case 135:
 case 136:
 case 141:
 case 133:
 case 145:
 case 144:
 case 143:
 case 142:
 case 140:
 case 128:
 case 129:
 case 132:
 case 137:
 case 138:
 case 139:
 case 130:
 case 131:
  return 1;

 default:
  return 0;
 }
}
