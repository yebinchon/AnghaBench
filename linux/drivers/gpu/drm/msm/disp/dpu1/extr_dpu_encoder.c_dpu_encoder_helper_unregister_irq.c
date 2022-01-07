
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int parent; int dpu_kms; struct dpu_encoder_irq* irq; } ;
struct dpu_encoder_irq {int irq_idx; int hw_idx; int cb; } ;
typedef enum dpu_intr_idx { ____Placeholder_dpu_intr_idx } dpu_intr_idx ;


 int DPU_ERROR (char*) ;
 int DRMID (int ) ;
 int DRM_ERROR (char*,int ,int,int ,int,...) ;
 int EINVAL ;
 int dpu_core_irq_disable (int ,int*,int) ;
 int dpu_core_irq_unregister_callback (int ,int,int *) ;
 int trace_dpu_enc_irq_unregister_success (int ,int,int ,int) ;

int dpu_encoder_helper_unregister_irq(struct dpu_encoder_phys *phys_enc,
  enum dpu_intr_idx intr_idx)
{
 struct dpu_encoder_irq *irq;
 int ret;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return -EINVAL;
 }
 irq = &phys_enc->irq[intr_idx];


 if (irq->irq_idx < 0) {
  DRM_ERROR("duplicate unregister id=%u, intr=%d, hw=%d, irq=%d",
     DRMID(phys_enc->parent), intr_idx, irq->hw_idx,
     irq->irq_idx);
  return 0;
 }

 ret = dpu_core_irq_disable(phys_enc->dpu_kms, &irq->irq_idx, 1);
 if (ret) {
  DRM_ERROR("disable failed id=%u, intr=%d, hw=%d, irq=%d ret=%d",
     DRMID(phys_enc->parent), intr_idx, irq->hw_idx,
     irq->irq_idx, ret);
 }

 ret = dpu_core_irq_unregister_callback(phys_enc->dpu_kms, irq->irq_idx,
   &irq->cb);
 if (ret) {
  DRM_ERROR("unreg cb fail id=%u, intr=%d, hw=%d, irq=%d ret=%d",
     DRMID(phys_enc->parent), intr_idx, irq->hw_idx,
     irq->irq_idx, ret);
 }

 trace_dpu_enc_irq_unregister_success(DRMID(phys_enc->parent), intr_idx,
          irq->hw_idx, irq->irq_idx);

 irq->irq_idx = -EINVAL;

 return 0;
}
