
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_sc {int led_count; int* led_state; struct led_classdev** leds; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct device* parent; } ;


 int LED_OFF ;
 int hid_err (struct hid_device*,char*) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static enum led_brightness sony_led_get_brightness(struct led_classdev *led)
{
 struct device *dev = led->dev->parent;
 struct hid_device *hdev = to_hid_device(dev);
 struct sony_sc *drv_data;

 int n;

 drv_data = hid_get_drvdata(hdev);
 if (!drv_data) {
  hid_err(hdev, "No device data\n");
  return LED_OFF;
 }

 for (n = 0; n < drv_data->led_count; n++) {
  if (led == drv_data->leds[n])
   return drv_data->led_state[n];
 }

 return LED_OFF;
}
