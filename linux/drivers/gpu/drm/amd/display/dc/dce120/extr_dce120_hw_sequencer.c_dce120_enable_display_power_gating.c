
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct dc_context {int dce_environment; } ;
struct dc_bios {TYPE_1__* funcs; } ;
struct dc {struct dc_context* ctx; } ;
typedef enum pipe_gating_control { ____Placeholder_pipe_gating_control } pipe_gating_control ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;
struct TYPE_2__ {int (* enable_disp_power_gating ) (struct dc_bios*,int ,int) ;} ;


 int ASIC_PIPE_DISABLE ;
 int ASIC_PIPE_ENABLE ;
 int ASIC_PIPE_INIT ;
 int BP_RESULT_OK ;
 int HW_REG_CRTC (int ,int ) ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int PIPE_GATING_CONTROL_ENABLE ;
 int PIPE_GATING_CONTROL_INIT ;
 int dce120_init_pte (struct dc_context*,int ) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTC0_CRTC_MASTER_UPDATE_MODE ;
 int stub1 (struct dc_bios*,int ,int) ;

__attribute__((used)) static bool dce120_enable_display_power_gating(
 struct dc *dc,
 uint8_t controller_id,
 struct dc_bios *dcb,
 enum pipe_gating_control power_gating)
{
 return 0;
}
