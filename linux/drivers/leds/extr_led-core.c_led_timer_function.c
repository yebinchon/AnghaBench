
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct led_classdev {unsigned long blink_delay_on; unsigned long blink_delay_off; unsigned long new_blink_brightness; unsigned long blink_brightness; int blink_timer; int work_flags; } ;


 int LED_BLINK_BRIGHTNESS_CHANGE ;
 int LED_BLINK_INVERT ;
 int LED_BLINK_ONESHOT ;
 int LED_BLINK_ONESHOT_STOP ;
 int LED_BLINK_SW ;
 unsigned long LED_OFF ;
 int blink_timer ;
 int clear_bit (int ,int *) ;
 struct led_classdev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct led_classdev* led_cdev ;
 unsigned long led_get_brightness (struct led_classdev*) ;
 int led_set_brightness_nosleep (struct led_classdev*,unsigned long) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void led_timer_function(struct timer_list *t)
{
 struct led_classdev *led_cdev = from_timer(led_cdev, t, blink_timer);
 unsigned long brightness;
 unsigned long delay;

 if (!led_cdev->blink_delay_on || !led_cdev->blink_delay_off) {
  led_set_brightness_nosleep(led_cdev, LED_OFF);
  clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
  return;
 }

 if (test_and_clear_bit(LED_BLINK_ONESHOT_STOP,
          &led_cdev->work_flags)) {
  clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
  return;
 }

 brightness = led_get_brightness(led_cdev);
 if (!brightness) {

  if (test_and_clear_bit(LED_BLINK_BRIGHTNESS_CHANGE,
     &led_cdev->work_flags))
   brightness = led_cdev->new_blink_brightness;
  else
   brightness = led_cdev->blink_brightness;
  delay = led_cdev->blink_delay_on;
 } else {



  led_cdev->blink_brightness = brightness;
  brightness = LED_OFF;
  delay = led_cdev->blink_delay_off;
 }

 led_set_brightness_nosleep(led_cdev, brightness);





 if (test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags)) {
  if (test_bit(LED_BLINK_INVERT, &led_cdev->work_flags)) {
   if (brightness)
    set_bit(LED_BLINK_ONESHOT_STOP,
     &led_cdev->work_flags);
  } else {
   if (!brightness)
    set_bit(LED_BLINK_ONESHOT_STOP,
     &led_cdev->work_flags);
  }
 }

 mod_timer(&led_cdev->blink_timer, jiffies + msecs_to_jiffies(delay));
}
