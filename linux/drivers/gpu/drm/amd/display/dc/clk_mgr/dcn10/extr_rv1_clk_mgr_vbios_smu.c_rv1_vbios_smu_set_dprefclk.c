
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dprefclk_khz; } ;
struct clk_mgr_internal {TYPE_1__ base; } ;


 int VBIOSSMC_MSG_SetDprefclkFreq ;
 int rv1_vbios_smu_send_msg_with_param (struct clk_mgr_internal*,int ,int) ;

int rv1_vbios_smu_set_dprefclk(struct clk_mgr_internal *clk_mgr)
{
 int actual_dprefclk_set_mhz = -1;

 actual_dprefclk_set_mhz = rv1_vbios_smu_send_msg_with_param(
   clk_mgr,
   VBIOSSMC_MSG_SetDprefclkFreq,
   clk_mgr->base.dprefclk_khz / 1000);



 return actual_dprefclk_set_mhz * 1000;
}
