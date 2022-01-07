
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gvt_irq {TYPE_1__* events; } ;
struct TYPE_2__ {int v_handler; int * info; } ;


 int INTEL_GVT_EVENT_MAX ;
 int handle_default_event_virt ;

__attribute__((used)) static void init_events(
 struct intel_gvt_irq *irq)
{
 int i;

 for (i = 0; i < INTEL_GVT_EVENT_MAX; i++) {
  irq->events[i].info = ((void*)0);
  irq->events[i].v_handler = handle_default_event_virt;
 }
}
