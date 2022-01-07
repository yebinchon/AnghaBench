
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {TYPE_1__* dev; } ;
struct lenovo_drvdata_tpkbd {int led_state; struct led_classdev led_micmute; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct device* parent; } ;


 int LED_FULL ;
 int LED_OFF ;
 struct lenovo_drvdata_tpkbd* hid_get_drvdata (struct hid_device*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static enum led_brightness lenovo_led_brightness_get_tpkbd(
   struct led_classdev *led_cdev)
{
 struct device *dev = led_cdev->dev->parent;
 struct hid_device *hdev = to_hid_device(dev);
 struct lenovo_drvdata_tpkbd *data_pointer = hid_get_drvdata(hdev);
 int led_nr = 0;

 if (led_cdev == &data_pointer->led_micmute)
  led_nr = 1;

 return data_pointer->led_state & (1 << led_nr)
    ? LED_FULL
    : LED_OFF;
}
