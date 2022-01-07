
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc {int dummy; } ;
struct intel_gt {int irq_lock; int pm_guc_events; TYPE_1__* i915; } ;
struct TYPE_2__ {int runtime_pm; } ;


 int assert_rpm_wakelock_held (int *) ;
 int gen6_gt_pm_reset_iir (struct intel_gt*,int ) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen9_reset_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 assert_rpm_wakelock_held(&gt->i915->runtime_pm);

 spin_lock_irq(&gt->irq_lock);
 gen6_gt_pm_reset_iir(gt, gt->pm_guc_events);
 spin_unlock_irq(&gt->irq_lock);
}
