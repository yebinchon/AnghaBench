
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hfi1_pportdata {int led_override_phase; unsigned long* led_override_vals; int led_override_timer; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int flags; } ;


 int HFI1_INITTED ;
 struct hfi1_pportdata* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int led_override_timer ;
 int mod_timer (int *,scalar_t__) ;
 struct hfi1_pportdata* ppd ;
 int setextled (struct hfi1_devdata*,int) ;

__attribute__((used)) static void run_led_override(struct timer_list *t)
{
 struct hfi1_pportdata *ppd = from_timer(ppd, t, led_override_timer);
 struct hfi1_devdata *dd = ppd->dd;
 unsigned long timeout;
 int phase_idx;

 if (!(dd->flags & HFI1_INITTED))
  return;

 phase_idx = ppd->led_override_phase & 1;

 setextled(dd, phase_idx);

 timeout = ppd->led_override_vals[phase_idx];


 ppd->led_override_phase = !ppd->led_override_phase;

 mod_timer(&ppd->led_override_timer, jiffies + timeout);
}
