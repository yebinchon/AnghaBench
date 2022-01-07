
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct qib_pportdata {int led_override_timeoff; int led_override_timer; scalar_t__* led_override_vals; scalar_t__ led_override; int led_override_phase; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; int (* f_setextled ) (struct qib_pportdata*,int) ;} ;


 int QIB_INITTED ;
 struct qib_pportdata* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int led_override_timer ;
 int mod_timer (int *,scalar_t__) ;
 struct qib_pportdata* ppd ;
 int stub1 (struct qib_pportdata*,int) ;

__attribute__((used)) static void qib_run_led_override(struct timer_list *t)
{
 struct qib_pportdata *ppd = from_timer(ppd, t,
          led_override_timer);
 struct qib_devdata *dd = ppd->dd;
 int timeoff;
 int ph_idx;

 if (!(dd->flags & QIB_INITTED))
  return;

 ph_idx = ppd->led_override_phase++ & 1;
 ppd->led_override = ppd->led_override_vals[ph_idx];
 timeoff = ppd->led_override_timeoff;

 dd->f_setextled(ppd, 1);




 if (ppd->led_override_vals[0] || ppd->led_override_vals[1])
  mod_timer(&ppd->led_override_timer, jiffies + timeoff);
}
