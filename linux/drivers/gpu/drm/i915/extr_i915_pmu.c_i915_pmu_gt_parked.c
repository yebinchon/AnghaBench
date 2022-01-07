
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_init; } ;
struct i915_pmu {int lock; int timer_enabled; TYPE_1__ base; } ;
struct drm_i915_private {struct i915_pmu pmu; } ;


 int pmu_needs_timer (struct i915_pmu*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void i915_pmu_gt_parked(struct drm_i915_private *i915)
{
 struct i915_pmu *pmu = &i915->pmu;

 if (!pmu->base.event_init)
  return;

 spin_lock_irq(&pmu->lock);




 pmu->timer_enabled = pmu_needs_timer(pmu, 0);
 spin_unlock_irq(&pmu->lock);
}
