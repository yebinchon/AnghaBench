
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct gt683r_led {int work; int * led_devs; } ;


 int GT683R_LED_COUNT ;
 int flush_work (int *) ;
 struct gt683r_led* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void gt683r_led_remove(struct hid_device *hdev)
{
 int i;
 struct gt683r_led *led = hid_get_drvdata(hdev);

 for (i = 0; i < GT683R_LED_COUNT; i++)
  led_classdev_unregister(&led->led_devs[i]);
 flush_work(&led->work);
 hid_hw_stop(hdev);
}
