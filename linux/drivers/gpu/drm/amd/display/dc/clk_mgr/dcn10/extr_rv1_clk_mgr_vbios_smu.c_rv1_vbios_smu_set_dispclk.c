
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dmcu {TYPE_3__* funcs; } ;
struct dc {TYPE_2__* ctx; TYPE_1__* res_pool; } ;
struct TYPE_10__ {TYPE_4__* ctx; } ;
struct clk_mgr_internal {int dfs_bypass_disp_clk; TYPE_5__ base; } ;
struct TYPE_9__ {struct dc* dc; } ;
struct TYPE_8__ {int (* set_psr_wait_loop ) (struct dmcu*,int) ;scalar_t__ (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_7__ {int dce_environment; } ;
struct TYPE_6__ {struct dmcu* dmcu; } ;


 int IS_FPGA_MAXIMUS_DC (int ) ;
 int MP1_SMN_C2PMSG_83 ;
 int REG_READ (int ) ;
 int VBIOSSMC_MSG_SetDispclkFreq ;
 int rv1_vbios_smu_send_msg_with_param (struct clk_mgr_internal*,int ,int) ;
 scalar_t__ stub1 (struct dmcu*) ;
 int stub2 (struct dmcu*,int) ;

int rv1_vbios_smu_set_dispclk(struct clk_mgr_internal *clk_mgr, int requested_dispclk_khz)
{
 int actual_dispclk_set_mhz = -1;
 struct dc *core_dc = clk_mgr->base.ctx->dc;
 struct dmcu *dmcu = core_dc->res_pool->dmcu;


 actual_dispclk_set_mhz = rv1_vbios_smu_send_msg_with_param(
   clk_mgr,
   VBIOSSMC_MSG_SetDispclkFreq,
   requested_dispclk_khz / 1000);


 actual_dispclk_set_mhz = REG_READ(MP1_SMN_C2PMSG_83) * 1000;

 if (!IS_FPGA_MAXIMUS_DC(core_dc->ctx->dce_environment)) {
  if (dmcu && dmcu->funcs->is_dmcu_initialized(dmcu)) {
   if (clk_mgr->dfs_bypass_disp_clk != actual_dispclk_set_mhz)
    dmcu->funcs->set_psr_wait_loop(dmcu,
      actual_dispclk_set_mhz / 7);
  }
 }

 return actual_dispclk_set_mhz * 1000;
}
