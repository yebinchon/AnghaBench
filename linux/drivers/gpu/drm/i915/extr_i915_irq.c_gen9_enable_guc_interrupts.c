
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {int pm_guc_events; int irq_lock; TYPE_2__* i915; int uncore; } ;
struct TYPE_4__ {int runtime_pm; } ;


 int WARN_ON_ONCE (int) ;
 int assert_rpm_wakelock_held (int *) ;
 int gen6_gt_pm_enable_irq (struct intel_gt*,int) ;
 int gen6_pm_iir (TYPE_2__*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_read (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen9_enable_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 assert_rpm_wakelock_held(&gt->i915->runtime_pm);

 spin_lock_irq(&gt->irq_lock);
 if (!guc->interrupts.enabled) {
  WARN_ON_ONCE(intel_uncore_read(gt->uncore,
            gen6_pm_iir(gt->i915)) &
        gt->pm_guc_events);
  guc->interrupts.enabled = 1;
  gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
 }
 spin_unlock_irq(&gt->irq_lock);
}
