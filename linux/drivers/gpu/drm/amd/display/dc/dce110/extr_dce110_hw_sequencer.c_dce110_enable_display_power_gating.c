
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct dc_context {int dce_environment; } ;
struct dc_bios {TYPE_2__* funcs; } ;
struct dc {TYPE_1__* res_pool; struct dc_context* ctx; } ;
typedef enum pipe_gating_control { ____Placeholder_pipe_gating_control } pipe_gating_control ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;
struct TYPE_4__ {int (* enable_disp_power_gating ) (struct dc_bios*,unsigned int,int) ;} ;
struct TYPE_3__ {unsigned int underlay_pipe_index; } ;


 int ASIC_PIPE_DISABLE ;
 int ASIC_PIPE_ENABLE ;
 int ASIC_PIPE_INIT ;
 int BP_RESULT_OK ;
 int CONTROLLER_ID_MAX ;
 unsigned int CONTROLLER_ID_UNDERLAY0 ;
 int HW_REG_CRTC (int ,unsigned int) ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int PIPE_GATING_CONTROL_ENABLE ;
 int PIPE_GATING_CONTROL_INIT ;
 int dce110_init_pte (struct dc_context*) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTC_MASTER_UPDATE_MODE ;
 int stub1 (struct dc_bios*,unsigned int,int) ;

__attribute__((used)) static bool dce110_enable_display_power_gating(
 struct dc *dc,
 uint8_t controller_id,
 struct dc_bios *dcb,
 enum pipe_gating_control power_gating)
{
 enum bp_result bp_result = BP_RESULT_OK;
 enum bp_pipe_control_action cntl;
 struct dc_context *ctx = dc->ctx;
 unsigned int underlay_idx = dc->res_pool->underlay_pipe_index;

 if (IS_FPGA_MAXIMUS_DC(ctx->dce_environment))
  return 1;

 if (power_gating == PIPE_GATING_CONTROL_INIT)
  cntl = ASIC_PIPE_INIT;
 else if (power_gating == PIPE_GATING_CONTROL_ENABLE)
  cntl = ASIC_PIPE_ENABLE;
 else
  cntl = ASIC_PIPE_DISABLE;

 if (controller_id == underlay_idx)
  controller_id = CONTROLLER_ID_UNDERLAY0 - 1;

 if (power_gating != PIPE_GATING_CONTROL_INIT || controller_id == 0){

  bp_result = dcb->funcs->enable_disp_power_gating(
      dcb, controller_id + 1, cntl);
  if (controller_id < CONTROLLER_ID_MAX - 1)
   dm_write_reg(ctx,
    HW_REG_CRTC(mmCRTC_MASTER_UPDATE_MODE, controller_id),
    0);
 }

 if (power_gating != PIPE_GATING_CONTROL_ENABLE)
  dce110_init_pte(ctx);

 if (bp_result == BP_RESULT_OK)
  return 1;
 else
  return 0;
}
