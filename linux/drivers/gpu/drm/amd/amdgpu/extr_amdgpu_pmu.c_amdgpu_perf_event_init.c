
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int config; } ;
struct hw_perf_event {int conf; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* pmu; struct hw_perf_event hw; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int ENOENT ;

__attribute__((used)) static int amdgpu_perf_event_init(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;


 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 hwc->conf = event->attr.config;

 return 0;
}
