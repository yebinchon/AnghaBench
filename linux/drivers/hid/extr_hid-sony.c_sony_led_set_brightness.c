
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_sc {int quirks; int led_count; int* led_state; scalar_t__* led_delay_off; scalar_t__* led_delay_on; struct led_classdev** leds; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct device* parent; } ;


 int SIXAXIS_CONTROLLER_USB ;
 int hid_err (struct hid_device*,char*) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int sony_set_leds (struct sony_sc*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static void sony_led_set_brightness(struct led_classdev *led,
        enum led_brightness value)
{
 struct device *dev = led->dev->parent;
 struct hid_device *hdev = to_hid_device(dev);
 struct sony_sc *drv_data;

 int n;
 int force_update;

 drv_data = hid_get_drvdata(hdev);
 if (!drv_data) {
  hid_err(hdev, "No device data\n");
  return;
 }
 force_update = !!(drv_data->quirks & SIXAXIS_CONTROLLER_USB);

 for (n = 0; n < drv_data->led_count; n++) {
  if (led == drv_data->leds[n] && (force_update ||
   (value != drv_data->led_state[n] ||
   drv_data->led_delay_on[n] ||
   drv_data->led_delay_off[n]))) {

   drv_data->led_state[n] = value;


   drv_data->led_delay_on[n] = 0;
   drv_data->led_delay_off[n] = 0;

   sony_set_leds(drv_data);
   break;
  }
 }
}
