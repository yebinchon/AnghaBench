
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int guc; } ;
struct intel_gt {TYPE_1__ uc; int i915; int ** engine_class; } ;


 size_t COPY_ENGINE_CLASS ;
 int GEN8_BCS_IRQ_SHIFT ;
 int GEN8_GT_BCS_IRQ ;
 int GEN8_GT_GUC_IRQ ;
 int GEN8_GT_PM_IRQ ;
 int GEN8_GT_RCS_IRQ ;
 int GEN8_GT_VCS0_IRQ ;
 int GEN8_GT_VCS1_IRQ ;
 int GEN8_GT_VECS_IRQ ;
 int GEN8_RCS_IRQ_SHIFT ;
 int GEN8_VCS0_IRQ_SHIFT ;
 int GEN8_VCS1_IRQ_SHIFT ;
 int GEN8_VECS_IRQ_SHIFT ;
 size_t RENDER_CLASS ;
 size_t VIDEO_DECODE_CLASS ;
 size_t VIDEO_ENHANCEMENT_CLASS ;
 int cs_irq_handler (int ,int) ;
 int gen6_rps_irq_handler (int ,int) ;
 int guc_irq_handler (int *,int) ;

void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4])
{
 if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
  cs_irq_handler(gt->engine_class[RENDER_CLASS][0],
          gt_iir[0] >> GEN8_RCS_IRQ_SHIFT);
  cs_irq_handler(gt->engine_class[COPY_ENGINE_CLASS][0],
          gt_iir[0] >> GEN8_BCS_IRQ_SHIFT);
 }

 if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
  cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][0],
          gt_iir[1] >> GEN8_VCS0_IRQ_SHIFT);
  cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][1],
          gt_iir[1] >> GEN8_VCS1_IRQ_SHIFT);
 }

 if (master_ctl & GEN8_GT_VECS_IRQ) {
  cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
          gt_iir[3] >> GEN8_VECS_IRQ_SHIFT);
 }

 if (master_ctl & (GEN8_GT_PM_IRQ | GEN8_GT_GUC_IRQ)) {
  gen6_rps_irq_handler(gt->i915, gt_iir[2]);
  guc_irq_handler(&gt->uc.guc, gt_iir[2] >> 16);
 }
}
