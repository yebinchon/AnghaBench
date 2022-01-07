
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_led {int held; int trigger; } ;
struct wacom {int hdev; } ;


 int BIT (int) ;
 int LED_FULL ;
 int hid_err (int ,char*,int,int) ;
 int led_trigger_event (int *,int ) ;
 struct wacom_led* wacom_led_find (struct wacom*,int,int) ;

__attribute__((used)) static void wacom_24hd_update_leds(struct wacom *wacom, int mask, int group)
{
 struct wacom_led *led;
 int i;
 bool updated = 0;






 if (group == 0)
  mask >>= 8;

 for (i = 0; i < 3; i++) {
  led = wacom_led_find(wacom, group, i);
  if (!led) {
   hid_err(wacom->hdev, "can't find LED %d in group %d\n",
    i, group);
   continue;
  }
  if (!updated && mask & BIT(i)) {
   led->held = 1;
   led_trigger_event(&led->trigger, LED_FULL);
  } else {
   led->held = 0;
  }
 }
}
