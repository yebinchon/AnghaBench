
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


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
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

void gen11_gt_irq_reset(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;


 intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
 intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE, 0);


 intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~0);
 intel_uncore_write(uncore, GEN11_BCS_RSVD_INTR_MASK, ~0);
 intel_uncore_write(uncore, GEN11_VCS0_VCS1_INTR_MASK, ~0);
 intel_uncore_write(uncore, GEN11_VCS2_VCS3_INTR_MASK, ~0);
 intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK, ~0);

 intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK, ~0);
 intel_uncore_write(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
 intel_uncore_write(uncore, GEN11_GUC_SG_INTR_MASK, ~0);
}
