
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_pmu {int timer_enabled; int timer; int timer_last; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int PERIOD ;
 int hrtimer_start_range_ns (int *,int ,int ,int ) ;
 int ktime_get () ;
 int ns_to_ktime (int ) ;
 scalar_t__ pmu_needs_timer (struct i915_pmu*,int) ;

__attribute__((used)) static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
{
 if (!pmu->timer_enabled && pmu_needs_timer(pmu, 1)) {
  pmu->timer_enabled = 1;
  pmu->timer_last = ktime_get();
  hrtimer_start_range_ns(&pmu->timer,
           ns_to_ktime(PERIOD), 0,
           HRTIMER_MODE_REL_PINNED);
 }
}
