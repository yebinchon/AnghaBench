
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int i915_pmu_enable (struct perf_event*) ;

__attribute__((used)) static void i915_pmu_event_start(struct perf_event *event, int flags)
{
 i915_pmu_enable(event);
 event->hw.state = 0;
}
