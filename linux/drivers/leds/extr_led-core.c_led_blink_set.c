
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; int blink_timer; } ;


 int LED_BLINK_ONESHOT ;
 int LED_BLINK_ONESHOT_STOP ;
 int LED_BLINK_SW ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int led_blink_setup (struct led_classdev*,unsigned long*,unsigned long*) ;

void led_blink_set(struct led_classdev *led_cdev,
     unsigned long *delay_on,
     unsigned long *delay_off)
{
 del_timer_sync(&led_cdev->blink_timer);

 clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
 clear_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags);
 clear_bit(LED_BLINK_ONESHOT_STOP, &led_cdev->work_flags);

 led_blink_setup(led_cdev, delay_on, delay_off);
}
