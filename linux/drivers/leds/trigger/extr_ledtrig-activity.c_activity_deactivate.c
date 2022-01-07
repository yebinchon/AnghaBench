
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; } ;
struct activity_data {int timer; } ;


 int LED_BLINK_SW ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int kfree (struct activity_data*) ;
 struct activity_data* led_get_trigger_data (struct led_classdev*) ;

__attribute__((used)) static void activity_deactivate(struct led_classdev *led_cdev)
{
 struct activity_data *activity_data = led_get_trigger_data(led_cdev);

 del_timer_sync(&activity_data->timer);
 kfree(activity_data);
 clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
}
