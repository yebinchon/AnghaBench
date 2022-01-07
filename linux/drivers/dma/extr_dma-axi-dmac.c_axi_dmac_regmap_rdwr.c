
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool axi_dmac_regmap_rdwr(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 140:
 case 138:
 case 139:
 case 146:
 case 130:
 case 133:
 case 141:
 case 143:
 case 135:
 case 129:
 case 128:
 case 142:
 case 134:
 case 131:
 case 147:
 case 132:
 case 144:
 case 145:
 case 136:
 case 137:
  return 1;
 default:
  return 0;
 }
}
