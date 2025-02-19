
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct split_pipe_cfg {int en; int intf; int split_flush_en; int mode; int member_0; } ;
struct msm_display_info {scalar_t__ intf_type; } ;
struct TYPE_4__ {int (* setup_split_pipe ) (struct dpu_hw_mdp*,struct split_pipe_cfg*) ;} ;
struct dpu_hw_mdp {TYPE_2__ ops; } ;
struct dpu_encoder_virt {struct msm_display_info disp_info; } ;
struct TYPE_3__ {scalar_t__ (* needs_single_flush ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {scalar_t__ split_role; TYPE_1__ ops; int intf_mode; struct dpu_hw_mdp* hw_mdptop; int parent; } ;
typedef enum dpu_intf { ____Placeholder_dpu_intf } dpu_intf ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*,int) ;
 int DPU_ERROR (char*,int) ;
 scalar_t__ DRM_MODE_ENCODER_DSI ;
 scalar_t__ ENC_ROLE_MASTER ;
 scalar_t__ ENC_ROLE_SOLO ;
 int stub1 (struct dpu_hw_mdp*,struct split_pipe_cfg*) ;
 scalar_t__ stub2 (struct dpu_encoder_phys*) ;
 int stub3 (struct dpu_hw_mdp*,struct split_pipe_cfg*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (int ) ;

void dpu_encoder_helper_split_config(
  struct dpu_encoder_phys *phys_enc,
  enum dpu_intf interface)
{
 struct dpu_encoder_virt *dpu_enc;
 struct split_pipe_cfg cfg = { 0 };
 struct dpu_hw_mdp *hw_mdptop;
 struct msm_display_info *disp_info;

 if (!phys_enc || !phys_enc->hw_mdptop || !phys_enc->parent) {
  DPU_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
  return;
 }

 dpu_enc = to_dpu_encoder_virt(phys_enc->parent);
 hw_mdptop = phys_enc->hw_mdptop;
 disp_info = &dpu_enc->disp_info;

 if (disp_info->intf_type != DRM_MODE_ENCODER_DSI)
  return;







 if (phys_enc->split_role == ENC_ROLE_SOLO) {
  if (hw_mdptop->ops.setup_split_pipe)
   hw_mdptop->ops.setup_split_pipe(hw_mdptop, &cfg);
  return;
 }

 cfg.en = 1;
 cfg.mode = phys_enc->intf_mode;
 cfg.intf = interface;

 if (cfg.en && phys_enc->ops.needs_single_flush &&
   phys_enc->ops.needs_single_flush(phys_enc))
  cfg.split_flush_en = 1;

 if (phys_enc->split_role == ENC_ROLE_MASTER) {
  DPU_DEBUG_ENC(dpu_enc, "enable %d\n", cfg.en);

  if (hw_mdptop->ops.setup_split_pipe)
   hw_mdptop->ops.setup_split_pipe(hw_mdptop, &cfg);
 }
}
