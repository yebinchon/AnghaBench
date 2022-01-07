
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * addr_filters; } ;
struct perf_event {TYPE_1__ hw; } ;


 int kfree (int *) ;

__attribute__((used)) static void etm_event_destroy(struct perf_event *event)
{
 kfree(event->hw.addr_filters);
 event->hw.addr_filters = ((void*)0);
}
