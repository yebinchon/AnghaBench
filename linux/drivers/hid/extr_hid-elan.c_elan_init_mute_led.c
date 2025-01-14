
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {char* name; int * dev; int max_brightness; int brightness_set_blocking; int brightness_get; } ;
struct hid_device {int dev; } ;
struct elan_drvdata {struct led_classdev mute_led; } ;


 int LED_ON ;
 int devm_led_classdev_register (int *,struct led_classdev*) ;
 int elan_mute_led_get_brigtness ;
 int elan_mute_led_set_brigtness ;
 struct elan_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int elan_init_mute_led(struct hid_device *hdev)
{
 struct elan_drvdata *drvdata = hid_get_drvdata(hdev);
 struct led_classdev *mute_led = &drvdata->mute_led;

 mute_led->name = "elan:red:mute";
 mute_led->brightness_get = elan_mute_led_get_brigtness;
 mute_led->brightness_set_blocking = elan_mute_led_set_brigtness;
 mute_led->max_brightness = LED_ON;
 mute_led->dev = &hdev->dev;

 return devm_led_classdev_register(&hdev->dev, mute_led);
}
