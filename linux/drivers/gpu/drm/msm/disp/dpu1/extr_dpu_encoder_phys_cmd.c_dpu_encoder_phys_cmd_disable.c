
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {scalar_t__ enable_state; TYPE_2__* hw_pp; int parent; } ;
struct TYPE_3__ {int (* enable_tearcheck ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; scalar_t__ idx; } ;


 scalar_t__ DPU_ENC_DISABLED ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_CMDENC (struct dpu_encoder_phys_cmd*,char*) ;
 int DRMID (int ) ;
 int DRM_DEBUG_KMS (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ PINGPONG_0 ;
 int stub1 (TYPE_2__*,int) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_disable(struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
  to_dpu_encoder_phys_cmd(phys_enc);

 if (!phys_enc || !phys_enc->hw_pp) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 DRM_DEBUG_KMS("id:%u pp:%d state:%d\n", DRMID(phys_enc->parent),
        phys_enc->hw_pp->idx - PINGPONG_0,
        phys_enc->enable_state);

 if (phys_enc->enable_state == DPU_ENC_DISABLED) {
  DPU_ERROR_CMDENC(cmd_enc, "already disabled\n");
  return;
 }

 if (phys_enc->hw_pp->ops.enable_tearcheck)
  phys_enc->hw_pp->ops.enable_tearcheck(phys_enc->hw_pp, 0);
 phys_enc->enable_state = DPU_ENC_DISABLED;
}
