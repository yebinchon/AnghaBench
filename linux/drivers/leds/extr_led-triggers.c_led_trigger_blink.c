
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {int dummy; } ;


 int led_trigger_blink_setup (struct led_trigger*,unsigned long*,unsigned long*,int ,int ) ;

void led_trigger_blink(struct led_trigger *trig,
         unsigned long *delay_on,
         unsigned long *delay_off)
{
 led_trigger_blink_setup(trig, delay_on, delay_off, 0, 0);
}
