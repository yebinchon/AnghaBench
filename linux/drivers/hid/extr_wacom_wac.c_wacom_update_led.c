
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wacom_led {int held; int trigger; } ;
struct TYPE_8__ {TYPE_3__* groups; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ features; } ;
struct wacom {int hdev; TYPE_4__ led; TYPE_2__ wacom_wac; } ;
struct TYPE_7__ {int select; } ;


 scalar_t__ WACOM_24HD ;
 int hid_err (int ,char*,int,...) ;
 int led_trigger_event (int *,int ) ;
 void wacom_24hd_update_leds (struct wacom*,int,int) ;
 int wacom_is_led_toggled (struct wacom*,int,int,int) ;
 struct wacom_led* wacom_led_find (struct wacom*,int,int) ;
 struct wacom_led* wacom_led_next (struct wacom*,struct wacom_led*) ;
 int wacom_leds_brightness_get (struct wacom_led*) ;

__attribute__((used)) static void wacom_update_led(struct wacom *wacom, int button_count, int mask,
        int group)
{
 struct wacom_led *led, *next_led;
 int cur;
 bool pressed;

 if (wacom->wacom_wac.features.type == WACOM_24HD)
  return wacom_24hd_update_leds(wacom, mask, group);

 pressed = wacom_is_led_toggled(wacom, button_count, mask, group);
 cur = wacom->led.groups[group].select;

 led = wacom_led_find(wacom, group, cur);
 if (!led) {
  hid_err(wacom->hdev, "can't find current LED %d in group %d\n",
   cur, group);
  return;
 }

 if (!pressed) {
  led->held = 0;
  return;
 }

 if (led->held && pressed)
  return;

 next_led = wacom_led_next(wacom, led);
 if (!next_led) {
  hid_err(wacom->hdev, "can't find next LED in group %d\n",
   group);
  return;
 }
 if (next_led == led)
  return;

 next_led->held = 1;
 led_trigger_event(&next_led->trigger,
     wacom_leds_brightness_get(next_led));
}
