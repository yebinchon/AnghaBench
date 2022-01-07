
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int led_state; } ;



int smscore_led_state(struct smscore_device_t *core, int led)
{
 if (led >= 0)
  core->led_state = led;
 return core->led_state;
}
