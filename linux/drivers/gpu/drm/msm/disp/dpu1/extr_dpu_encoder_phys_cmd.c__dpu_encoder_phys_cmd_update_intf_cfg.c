
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_hw_intf_cfg {int mode_3d; int stream_sel; int intf_mode_sel; int intf; int member_0; } ;
struct TYPE_2__ {int (* setup_intf_cfg ) (struct dpu_hw_ctl*,struct dpu_hw_intf_cfg*) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys_cmd {int stream_sel; } ;
struct dpu_encoder_phys {int intf_idx; struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_CTL_MODE_SEL_CMD ;
 int dpu_encoder_helper_get_3d_blend_mode (struct dpu_encoder_phys*) ;
 int stub1 (struct dpu_hw_ctl*,struct dpu_hw_intf_cfg*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void _dpu_encoder_phys_cmd_update_intf_cfg(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
   to_dpu_encoder_phys_cmd(phys_enc);
 struct dpu_hw_ctl *ctl;
 struct dpu_hw_intf_cfg intf_cfg = { 0 };

 if (!phys_enc)
  return;

 ctl = phys_enc->hw_ctl;
 if (!ctl || !ctl->ops.setup_intf_cfg)
  return;

 intf_cfg.intf = phys_enc->intf_idx;
 intf_cfg.intf_mode_sel = DPU_CTL_MODE_SEL_CMD;
 intf_cfg.stream_sel = cmd_enc->stream_sel;
 intf_cfg.mode_3d = dpu_encoder_helper_get_3d_blend_mode(phys_enc);
 ctl->ops.setup_intf_cfg(ctl, &intf_cfg);
}
