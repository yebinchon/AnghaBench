
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int I915_PMU_SAMPLE_BITS ;

__attribute__((used)) static u8 engine_event_instance(struct perf_event *event)
{
 return (event->attr.config >> I915_PMU_SAMPLE_BITS) & 0xff;
}
