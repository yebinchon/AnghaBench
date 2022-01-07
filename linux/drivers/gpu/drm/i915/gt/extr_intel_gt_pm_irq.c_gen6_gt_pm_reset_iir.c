
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int irq_lock; int i915; struct intel_uncore* uncore; } ;
typedef int i915_reg_t ;


 int GEN6_PMIIR ;
 int GEN8_GT_IIR (int) ;
 int INTEL_GEN (int ) ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;
 int lockdep_assert_held (int *) ;

void gen6_gt_pm_reset_iir(struct intel_gt *gt, u32 reset_mask)
{
 struct intel_uncore *uncore = gt->uncore;
 i915_reg_t reg = INTEL_GEN(gt->i915) >= 8 ? GEN8_GT_IIR(2) : GEN6_PMIIR;

 lockdep_assert_held(&gt->irq_lock);

 intel_uncore_write(uncore, reg, reset_mask);
 intel_uncore_write(uncore, reg, reset_mask);
 intel_uncore_posting_read(uncore, reg);
}
