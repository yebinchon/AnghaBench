
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nasgpio_led {int name; } ;
struct led_classdev {int groups; int blink_set; int brightness_set; int brightness; int name; } ;
struct TYPE_2__ {int dev; } ;


 int GP_LVL ;
 int LED_FULL ;
 int LED_OFF ;
 struct led_classdev* get_classdev_for_led_nr (int) ;
 int led_classdev_register (int *,struct led_classdev*) ;
 TYPE_1__* nas_gpio_pci_dev ;
 scalar_t__ nasgpio_led_get_attr (struct led_classdev*,int ) ;
 int nasgpio_led_groups ;
 int nasgpio_led_set_blink ;
 int nasgpio_led_set_brightness ;
 struct nasgpio_led* nasgpio_leds ;

__attribute__((used)) static int register_nasgpio_led(int led_nr)
{
 int ret;
 struct nasgpio_led *nas_led = &nasgpio_leds[led_nr];
 struct led_classdev *led = get_classdev_for_led_nr(led_nr);

 led->name = nas_led->name;
 led->brightness = LED_OFF;
 if (nasgpio_led_get_attr(led, GP_LVL))
  led->brightness = LED_FULL;
 led->brightness_set = nasgpio_led_set_brightness;
 led->blink_set = nasgpio_led_set_blink;
 led->groups = nasgpio_led_groups;
 ret = led_classdev_register(&nas_gpio_pci_dev->dev, led);
 if (ret)
  return ret;

 return 0;
}
