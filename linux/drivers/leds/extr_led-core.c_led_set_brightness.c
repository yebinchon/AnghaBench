
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int new_blink_brightness; int work_flags; int set_brightness_work; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_BLINK_BRIGHTNESS_CHANGE ;
 int LED_BLINK_DISABLE ;
 int LED_BLINK_SW ;
 int LED_OFF ;
 int led_set_brightness_nosleep (struct led_classdev*,int) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void led_set_brightness(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{




 if (test_bit(LED_BLINK_SW, &led_cdev->work_flags)) {





  if (brightness == LED_OFF) {
   set_bit(LED_BLINK_DISABLE, &led_cdev->work_flags);
   schedule_work(&led_cdev->set_brightness_work);
  } else {
   set_bit(LED_BLINK_BRIGHTNESS_CHANGE,
    &led_cdev->work_flags);
   led_cdev->new_blink_brightness = brightness;
  }
  return;
 }

 led_set_brightness_nosleep(led_cdev, brightness);
}
