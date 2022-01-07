
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int blink_timer; int set_brightness_work; } ;


 int INIT_WORK (int *,int ) ;
 int led_timer_function ;
 int set_brightness_delayed ;
 int timer_setup (int *,int ,int ) ;

void led_init_core(struct led_classdev *led_cdev)
{
 INIT_WORK(&led_cdev->set_brightness_work, set_brightness_delayed);

 timer_setup(&led_cdev->blink_timer, led_timer_function, 0);
}
