
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {struct led_classdev** led; } ;
struct led_classdev {int dummy; } ;


 int kfree (struct led_classdev*) ;
 int led_classdev_unregister (struct led_classdev*) ;

void picolcd_exit_leds(struct picolcd_data *data)
{
 struct led_classdev *led;
 int i;

 for (i = 0; i < 8; i++) {
  led = data->led[i];
  data->led[i] = ((void*)0);
  if (!led)
   continue;
  led_classdev_unregister(led);
  kfree(led);
 }
}
