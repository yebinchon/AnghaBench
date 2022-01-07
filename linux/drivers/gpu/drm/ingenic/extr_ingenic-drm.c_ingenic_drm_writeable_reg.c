
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool ingenic_drm_writeable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 130:
 case 129:
 case 132:
 case 134:
 case 128:
 case 131:
 case 133:
  return 0;
 default:
  return 1;
 }
}
