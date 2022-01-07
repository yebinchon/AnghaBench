
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {TYPE_2__* i915; int irq_lock; int pm_guc_events; } ;
struct TYPE_4__ {int runtime_pm; } ;


 int assert_rpm_wakelock_held (int *) ;
 int gen6_gt_pm_disable_irq (struct intel_gt*,int ) ;
 int gen9_reset_guc_interrupts (struct intel_guc*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_synchronize_irq (TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen9_disable_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 assert_rpm_wakelock_held(&gt->i915->runtime_pm);

 spin_lock_irq(&gt->irq_lock);
 guc->interrupts.enabled = 0;

 gen6_gt_pm_disable_irq(gt, gt->pm_guc_events);

 spin_unlock_irq(&gt->irq_lock);
 intel_synchronize_irq(gt->i915);

 gen9_reset_guc_interrupts(guc);
}
