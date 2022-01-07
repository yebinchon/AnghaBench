
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mgr_internal {int dummy; } ;


 int VBIOSSMC_MSG_UpdatePmeRestore ;
 int rn_vbios_smu_send_msg_with_param (struct clk_mgr_internal*,int ,int ) ;

void rn_vbios_smu_enable_pme_wa(struct clk_mgr_internal *clk_mgr)
{
 rn_vbios_smu_send_msg_with_param(
   clk_mgr,
   VBIOSSMC_MSG_UpdatePmeRestore,
   0);
}
