
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int (* prepare_commit ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;


 int DPU_ERROR (char*) ;
 int stub1 (struct dpu_encoder_phys*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

void dpu_encoder_prepare_commit(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc;
 struct dpu_encoder_phys *phys;
 int i;

 if (!drm_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 dpu_enc = to_dpu_encoder_virt(drm_enc);

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  phys = dpu_enc->phys_encs[i];
  if (phys && phys->ops.prepare_commit)
   phys->ops.prepare_commit(phys);
 }
}
