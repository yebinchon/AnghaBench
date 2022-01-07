
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNV_NUM_CHANNELS ;
 int ENODEV ;
 scalar_t__ RD_REG (int *,int ) ;
 scalar_t__ RD_REGP (int *,int ,int ) ;
 int d_cr_dmap ;
 int d_cr_dmap1 ;
 int d_cr_dmap2 ;
 int d_cr_dmap3 ;
 int d_cr_dmap4 ;
 int d_cr_dmap5 ;
 int d_cr_drp ;
 int d_cr_dsch ;
 int d_cr_ecc_ctrl ;
 int * dmap ;
 int * dmap1 ;
 int * dmap2 ;
 int * dmap3 ;
 int * dmap4 ;
 int * dmap5 ;
 int * dnv_dports ;
 int * drp ;
 int dsch ;
 int * ecc_ctrl ;

__attribute__((used)) static int dnv_get_registers(void)
{
 int i;

 if (RD_REG(&dsch, d_cr_dsch))
  return -ENODEV;

 for (i = 0; i < DNV_NUM_CHANNELS; i++)
  if (RD_REGP(&ecc_ctrl[i], d_cr_ecc_ctrl, dnv_dports[i]) ||
   RD_REGP(&drp[i], d_cr_drp, dnv_dports[i]) ||
   RD_REGP(&dmap[i], d_cr_dmap, dnv_dports[i]) ||
   RD_REGP(&dmap1[i], d_cr_dmap1, dnv_dports[i]) ||
   RD_REGP(&dmap2[i], d_cr_dmap2, dnv_dports[i]) ||
   RD_REGP(&dmap3[i], d_cr_dmap3, dnv_dports[i]) ||
   RD_REGP(&dmap4[i], d_cr_dmap4, dnv_dports[i]) ||
   RD_REGP(&dmap5[i], d_cr_dmap5, dnv_dports[i]))
   return -ENODEV;

 return 0;
}
