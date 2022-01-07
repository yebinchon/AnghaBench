
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clk_mgr_internal {int dummy; } ;


 int VBIOSSMC_MSG_SetDppclkFreq ;
 int rn_vbios_smu_send_msg_with_param (struct clk_mgr_internal*,int ,int) ;

int rn_vbios_smu_set_dppclk(struct clk_mgr_internal *clk_mgr, int requested_dpp_khz)
{
 int actual_dppclk_set_mhz = -1;

 uint32_t clk = requested_dpp_khz / 1000;

 if (clk <= 100)
  clk = 101;

 actual_dppclk_set_mhz = rn_vbios_smu_send_msg_with_param(
   clk_mgr,
   VBIOSSMC_MSG_SetDppclkFreq,
   clk);

 return actual_dppclk_set_mhz * 1000;
}
