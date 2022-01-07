
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; scalar_t__ blink_delay_off; scalar_t__ blink_delay_on; int blink_timer; } ;


 int LED_BLINK_SW ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;

void led_stop_software_blink(struct led_classdev *led_cdev)
{
 del_timer_sync(&led_cdev->blink_timer);
 led_cdev->blink_delay_on = 0;
 led_cdev->blink_delay_off = 0;
 clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
}
