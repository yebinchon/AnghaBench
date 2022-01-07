
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; int enc_lock; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int (* destroy ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*) ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_ENC (struct dpu_encoder_virt*,char*,int) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dpu_encoder_phys*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

__attribute__((used)) static void dpu_encoder_destroy(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 int i = 0;

 if (!drm_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }

 dpu_enc = to_dpu_encoder_virt(drm_enc);
 DPU_DEBUG_ENC(dpu_enc, "\n");

 mutex_lock(&dpu_enc->enc_lock);

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

  if (phys && phys->ops.destroy) {
   phys->ops.destroy(phys);
   --dpu_enc->num_phys_encs;
   dpu_enc->phys_encs[i] = ((void*)0);
  }
 }

 if (dpu_enc->num_phys_encs)
  DPU_ERROR_ENC(dpu_enc, "expected 0 num_phys_encs not %d\n",
    dpu_enc->num_phys_encs);
 dpu_enc->num_phys_encs = 0;
 mutex_unlock(&dpu_enc->enc_lock);

 drm_encoder_cleanup(drm_enc);
 mutex_destroy(&dpu_enc->enc_lock);
}
