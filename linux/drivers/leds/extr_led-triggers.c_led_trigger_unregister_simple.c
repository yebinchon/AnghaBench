
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {int dummy; } ;


 int kfree (struct led_trigger*) ;
 int led_trigger_unregister (struct led_trigger*) ;

void led_trigger_unregister_simple(struct led_trigger *trig)
{
 if (trig)
  led_trigger_unregister(trig);
 kfree(trig);
}
