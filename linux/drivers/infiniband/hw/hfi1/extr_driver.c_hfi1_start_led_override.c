
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct hfi1_pportdata {int led_override_phase; int led_override_timer_active; TYPE_2__ led_override_timer; void** led_override_vals; TYPE_1__* dd; } ;
struct TYPE_5__ {int flags; } ;


 int HFI1_INITTED ;
 int add_timer (TYPE_2__*) ;
 int atomic_set (int *,int) ;
 scalar_t__ jiffies ;
 void* msecs_to_jiffies (unsigned int) ;
 int run_led_override ;
 int smp_wmb () ;
 int timer_pending (TYPE_2__*) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

void hfi1_start_led_override(struct hfi1_pportdata *ppd, unsigned int timeon,
        unsigned int timeoff)
{
 if (!(ppd->dd->flags & HFI1_INITTED))
  return;


 ppd->led_override_vals[0] = msecs_to_jiffies(timeoff);
 ppd->led_override_vals[1] = msecs_to_jiffies(timeon);


 ppd->led_override_phase = 1;





 if (!timer_pending(&ppd->led_override_timer)) {
  timer_setup(&ppd->led_override_timer, run_led_override, 0);
  ppd->led_override_timer.expires = jiffies + 1;
  add_timer(&ppd->led_override_timer);
  atomic_set(&ppd->led_override_timer_active, 1);

  smp_wmb();
 }
}
