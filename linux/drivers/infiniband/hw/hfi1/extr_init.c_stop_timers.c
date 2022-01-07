
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct hfi1_pportdata {int led_override_timer_active; TYPE_1__ led_override_timer; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (TYPE_1__*) ;

__attribute__((used)) static void stop_timers(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 int pidx;

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  if (ppd->led_override_timer.function) {
   del_timer_sync(&ppd->led_override_timer);
   atomic_set(&ppd->led_override_timer_active, 0);
  }
 }
}
