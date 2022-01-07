
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_perf_event {int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 scalar_t__ __i915_pmu_event_read (struct perf_event*) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void i915_pmu_event_read(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 prev, new;

again:
 prev = local64_read(&hwc->prev_count);
 new = __i915_pmu_event_read(event);

 if (local64_cmpxchg(&hwc->prev_count, prev, new) != prev)
  goto again;

 local64_add(new - prev, &event->count);
}
