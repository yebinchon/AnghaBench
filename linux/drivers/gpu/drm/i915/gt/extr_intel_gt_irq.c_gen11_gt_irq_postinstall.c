
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int pm_ier; int pm_imr; struct intel_uncore* uncore; } ;


 int BUILD_BUG_ON (int const) ;
 int GEN11_BCS_RSVD_INTR_MASK ;
 int GEN11_GPM_WGBOXPERF_INTR_ENABLE ;
 int GEN11_GPM_WGBOXPERF_INTR_MASK ;
 int GEN11_GUC_SG_INTR_ENABLE ;
 int GEN11_GUC_SG_INTR_MASK ;
 int GEN11_RCS0_RSVD_INTR_MASK ;
 int GEN11_RENDER_COPY_INTR_ENABLE ;
 int GEN11_VCS0_VCS1_INTR_MASK ;
 int GEN11_VCS2_VCS3_INTR_MASK ;
 int GEN11_VCS_VECS_INTR_ENABLE ;
 int GEN11_VECS0_VECS1_INTR_MASK ;
 int GT_CONTEXT_SWITCH_INTERRUPT ;
 int GT_RENDER_USER_INTERRUPT ;
 int intel_uncore_write (struct intel_uncore*,int ,int const) ;

void gen11_gt_irq_postinstall(struct intel_gt *gt)
{
 const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
 struct intel_uncore *uncore = gt->uncore;
 const u32 dmask = irqs << 16 | irqs;
 const u32 smask = irqs << 16;

 BUILD_BUG_ON(irqs & 0xffff0000);


 intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, dmask);
 intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE, dmask);


 intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~smask);
 intel_uncore_write(uncore, GEN11_BCS_RSVD_INTR_MASK, ~smask);
 intel_uncore_write(uncore, GEN11_VCS0_VCS1_INTR_MASK, ~dmask);
 intel_uncore_write(uncore, GEN11_VCS2_VCS3_INTR_MASK, ~dmask);
 intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK, ~dmask);





 gt->pm_ier = 0x0;
 gt->pm_imr = ~gt->pm_ier;
 intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK, ~0);


 intel_uncore_write(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
 intel_uncore_write(uncore, GEN11_GUC_SG_INTR_MASK, ~0);
}
