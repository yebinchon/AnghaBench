
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int pm_imr; int irq_lock; } ;


 int WARN_ON (int) ;
 int lockdep_assert_held (int *) ;
 int write_pm_imr (struct intel_gt*) ;

__attribute__((used)) static void gen6_gt_pm_update_irq(struct intel_gt *gt,
      u32 interrupt_mask,
      u32 enabled_irq_mask)
{
 u32 new_val;

 WARN_ON(enabled_irq_mask & ~interrupt_mask);

 lockdep_assert_held(&gt->irq_lock);

 new_val = gt->pm_imr;
 new_val &= ~interrupt_mask;
 new_val |= ~enabled_irq_mask & interrupt_mask;

 if (new_val != gt->pm_imr) {
  gt->pm_imr = new_val;
  write_pm_imr(gt);
 }
}
