
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int parent; } ;


 int WARN_ON (int ) ;
 int engine_event_destroy (struct perf_event*) ;
 scalar_t__ is_engine_event (struct perf_event*) ;

__attribute__((used)) static void i915_pmu_event_destroy(struct perf_event *event)
{
 WARN_ON(event->parent);

 if (is_engine_event(event))
  engine_event_destroy(event);
}
