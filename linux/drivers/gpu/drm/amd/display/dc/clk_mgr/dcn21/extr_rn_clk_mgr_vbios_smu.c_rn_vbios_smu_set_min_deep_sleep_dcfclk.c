
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mgr_internal {int smu_ver; } ;


 int VBIOSSMC_MSG_SetMinDeepSleepDcfclk ;
 int rn_vbios_smu_send_msg_with_param (struct clk_mgr_internal*,int ,int) ;

int rn_vbios_smu_set_min_deep_sleep_dcfclk(struct clk_mgr_internal *clk_mgr, int requested_min_ds_dcfclk_khz)
{
 int actual_min_ds_dcfclk_mhz = -1;

 if (clk_mgr->smu_ver < 0xFFFFFFFF)
  return actual_min_ds_dcfclk_mhz;

 actual_min_ds_dcfclk_mhz = rn_vbios_smu_send_msg_with_param(
   clk_mgr,
   VBIOSSMC_MSG_SetMinDeepSleepDcfclk,
   requested_min_ds_dcfclk_khz / 1000);

 return actual_min_ds_dcfclk_mhz * 1000;
}
