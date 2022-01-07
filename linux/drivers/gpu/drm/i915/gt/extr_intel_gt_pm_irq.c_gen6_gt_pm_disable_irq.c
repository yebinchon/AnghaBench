
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int pm_ier; int irq_lock; } ;


 int gen6_gt_pm_mask_irq (struct intel_gt*,int ) ;
 int lockdep_assert_held (int *) ;
 int write_pm_ier (struct intel_gt*) ;

void gen6_gt_pm_disable_irq(struct intel_gt *gt, u32 disable_mask)
{
 lockdep_assert_held(&gt->irq_lock);

 gt->pm_ier &= ~disable_mask;
 gen6_gt_pm_mask_irq(gt, disable_mask);
 write_pm_ier(gt);
}
