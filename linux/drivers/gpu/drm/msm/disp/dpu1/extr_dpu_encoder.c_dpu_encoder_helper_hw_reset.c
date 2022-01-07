
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {int idx; TYPE_1__ ops; } ;
struct dpu_encoder_virt {int dummy; } ;
struct dpu_encoder_phys {int enable_state; int parent; struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_ENC_ENABLED ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_ENC (struct dpu_encoder_virt*,char*,int ) ;
 int DRMID (int ) ;
 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int stub1 (struct dpu_hw_ctl*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (int ) ;

__attribute__((used)) static void dpu_encoder_helper_hw_reset(struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_virt *dpu_enc;
 struct dpu_hw_ctl *ctl;
 int rc;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 dpu_enc = to_dpu_encoder_virt(phys_enc->parent);
 ctl = phys_enc->hw_ctl;

 if (!ctl || !ctl->ops.reset)
  return;

 DRM_DEBUG_KMS("id:%u ctl %d reset\n", DRMID(phys_enc->parent),
        ctl->idx);

 rc = ctl->ops.reset(ctl);
 if (rc)
  DPU_ERROR_ENC(dpu_enc, "ctl %d reset failure\n", ctl->idx);

 phys_enc->enable_state = DPU_ENC_ENABLED;
}
