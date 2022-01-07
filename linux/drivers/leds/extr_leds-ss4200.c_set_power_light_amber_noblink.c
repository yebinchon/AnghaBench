
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nasgpio_led {int led_cdev; } ;


 int LED_FULL ;
 int LED_OFF ;
 struct nasgpio_led* get_led_named (char*) ;
 int nasgpio_led_set_brightness (int *,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void set_power_light_amber_noblink(void)
{
 struct nasgpio_led *amber = get_led_named("power:amber:power");
 struct nasgpio_led *blue = get_led_named("power:blue:power");

 if (!amber || !blue)
  return;



 pr_debug("setting blue off and amber on\n");

 nasgpio_led_set_brightness(&blue->led_cdev, LED_OFF);
 nasgpio_led_set_brightness(&amber->led_cdev, LED_FULL);
}
