
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int i915_pmu_disable (struct perf_event*) ;
 int i915_pmu_event_read (struct perf_event*) ;

__attribute__((used)) static void i915_pmu_event_stop(struct perf_event *event, int flags)
{
 if (flags & PERF_EF_UPDATE)
  i915_pmu_event_read(event);
 i915_pmu_disable(event);
 event->hw.state = PERF_HES_STOPPED;
}
