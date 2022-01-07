
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * event_init; } ;
struct i915_pmu {TYPE_1__ base; int timer; int enable; } ;
struct drm_i915_private {struct i915_pmu pmu; } ;


 int WARN_ON (int ) ;
 int free_event_attributes (struct i915_pmu*) ;
 int hrtimer_cancel (int *) ;
 int i915_pmu_unregister_cpuhp_state (struct i915_pmu*) ;
 int perf_pmu_unregister (TYPE_1__*) ;

void i915_pmu_unregister(struct drm_i915_private *i915)
{
 struct i915_pmu *pmu = &i915->pmu;

 if (!pmu->base.event_init)
  return;

 WARN_ON(pmu->enable);

 hrtimer_cancel(&pmu->timer);

 i915_pmu_unregister_cpuhp_state(pmu);

 perf_pmu_unregister(&pmu->base);
 pmu->base.event_init = ((void*)0);
 free_event_attributes(pmu);
}
