
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; int blink_timer; } ;


 int LED_BLINK_INVERT ;
 int LED_BLINK_ONESHOT ;
 int LED_BLINK_ONESHOT_STOP ;
 int clear_bit (int ,int *) ;
 int led_blink_setup (struct led_classdev*,unsigned long*,unsigned long*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ timer_pending (int *) ;

void led_blink_set_oneshot(struct led_classdev *led_cdev,
      unsigned long *delay_on,
      unsigned long *delay_off,
      int invert)
{
 if (test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
      timer_pending(&led_cdev->blink_timer))
  return;

 set_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags);
 clear_bit(LED_BLINK_ONESHOT_STOP, &led_cdev->work_flags);

 if (invert)
  set_bit(LED_BLINK_INVERT, &led_cdev->work_flags);
 else
  clear_bit(LED_BLINK_INVERT, &led_cdev->work_flags);

 led_blink_setup(led_cdev, delay_on, delay_off);
}
