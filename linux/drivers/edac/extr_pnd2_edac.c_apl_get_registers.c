
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APL_NUM_CHANNELS ;
 int ENODEV ;
 scalar_t__ RD_REG (int *,int ) ;
 int RD_REGP (int *,int ,int ) ;
 int * apl_dports ;
 int asym_2way ;
 int b_cr_asym_2way_mem_region_mchbar ;
 int d_cr_drp0 ;
 int * drp0 ;

__attribute__((used)) static int apl_get_registers(void)
{
 int ret = -ENODEV;
 int i;

 if (RD_REG(&asym_2way, b_cr_asym_2way_mem_region_mchbar))
  return -ENODEV;





 for (i = 0; i < APL_NUM_CHANNELS; i++)
  if (!RD_REGP(&drp0[i], d_cr_drp0, apl_dports[i]))
   ret = 0;

 return ret;
}
