
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_led {int hlv; int llv; struct wacom* wacom; } ;
struct TYPE_2__ {int max_hlv; int max_llv; } ;
struct wacom {TYPE_1__ led; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;

enum led_brightness wacom_leds_brightness_get(struct wacom_led *led)
{
 struct wacom *wacom = led->wacom;

 if (wacom->led.max_hlv)
  return led->hlv * LED_FULL / wacom->led.max_hlv;

 if (wacom->led.max_llv)
  return led->llv * LED_FULL / wacom->led.max_llv;


 return LED_FULL;
}
