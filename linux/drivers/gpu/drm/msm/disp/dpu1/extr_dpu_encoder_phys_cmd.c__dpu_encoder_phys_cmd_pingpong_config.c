
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int cached_mode; TYPE_1__* hw_pp; TYPE_3__* hw_ctl; } ;
struct TYPE_5__ {int setup_intf_cfg; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ idx; } ;


 int DPU_DEBUG_CMDENC (struct dpu_encoder_phys_cmd*,char*,scalar_t__) ;
 int DPU_ERROR (char*,int) ;
 scalar_t__ PINGPONG_0 ;
 int _dpu_encoder_phys_cmd_update_intf_cfg (struct dpu_encoder_phys*) ;
 int dpu_encoder_phys_cmd_tearcheck_config (struct dpu_encoder_phys*) ;
 int drm_mode_debug_printmodeline (int *) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void _dpu_encoder_phys_cmd_pingpong_config(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
  to_dpu_encoder_phys_cmd(phys_enc);

 if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp
   || !phys_enc->hw_ctl->ops.setup_intf_cfg) {
  DPU_ERROR("invalid arg(s), enc %d\n", phys_enc != 0);
  return;
 }

 DPU_DEBUG_CMDENC(cmd_enc, "pp %d, enabling mode:\n",
   phys_enc->hw_pp->idx - PINGPONG_0);
 drm_mode_debug_printmodeline(&phys_enc->cached_mode);

 _dpu_encoder_phys_cmd_update_intf_cfg(phys_enc);
 dpu_encoder_phys_cmd_tearcheck_config(phys_enc);
}
