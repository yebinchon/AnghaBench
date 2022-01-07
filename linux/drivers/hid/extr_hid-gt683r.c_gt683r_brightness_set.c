
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {TYPE_1__* dev; } ;
struct hid_device {int dummy; } ;
struct gt683r_led {int* brightnesses; int work; struct led_classdev* led_devs; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct device* parent; } ;


 int GT683R_LED_COUNT ;
 struct gt683r_led* hid_get_drvdata (struct hid_device*) ;
 int schedule_work (int *) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static void gt683r_brightness_set(struct led_classdev *led_cdev,
    enum led_brightness brightness)
{
 int i;
 struct device *dev = led_cdev->dev->parent;
 struct hid_device *hdev = to_hid_device(dev);
 struct gt683r_led *led = hid_get_drvdata(hdev);

 for (i = 0; i < GT683R_LED_COUNT; i++) {
  if (led_cdev == &led->led_devs[i])
   break;
 }

 if (i < GT683R_LED_COUNT) {
  led->brightnesses[i] = brightness;
  schedule_work(&led->work);
 }
}
