
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int blink_brightness; int max_brightness; unsigned long blink_delay_on; unsigned long blink_delay_off; int blink_timer; int work_flags; } ;


 int LED_BLINK_SW ;
 int LED_OFF ;
 scalar_t__ jiffies ;
 int led_get_brightness (struct led_classdev*) ;
 int led_set_brightness_nosleep (struct led_classdev*,int) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void led_set_software_blink(struct led_classdev *led_cdev,
       unsigned long delay_on,
       unsigned long delay_off)
{
 int current_brightness;

 current_brightness = led_get_brightness(led_cdev);
 if (current_brightness)
  led_cdev->blink_brightness = current_brightness;
 if (!led_cdev->blink_brightness)
  led_cdev->blink_brightness = led_cdev->max_brightness;

 led_cdev->blink_delay_on = delay_on;
 led_cdev->blink_delay_off = delay_off;


 if (!delay_on) {
  led_set_brightness_nosleep(led_cdev, LED_OFF);
  return;
 }


 if (!delay_off) {
  led_set_brightness_nosleep(led_cdev,
        led_cdev->blink_brightness);
  return;
 }

 set_bit(LED_BLINK_SW, &led_cdev->work_flags);
 mod_timer(&led_cdev->blink_timer, jiffies + 1);
}
