
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int DCU_INT_STATUS ;
 unsigned int DCU_UPDATE_MODE ;

__attribute__((used)) static bool fsl_dcu_drm_is_volatile_reg(struct device *dev, unsigned int reg)
{
 if (reg == DCU_INT_STATUS || reg == DCU_UPDATE_MODE)
  return 1;

 return 0;
}
