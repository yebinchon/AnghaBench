
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {int restore_state; int timer; } ;
struct led_classdev {int dummy; } ;


 int del_timer_sync (int *) ;
 int kfree (struct transient_trig_data*) ;
 struct transient_trig_data* led_get_trigger_data (struct led_classdev*) ;
 int led_set_brightness_nosleep (struct led_classdev*,int ) ;

__attribute__((used)) static void transient_trig_deactivate(struct led_classdev *led_cdev)
{
 struct transient_trig_data *transient_data = led_get_trigger_data(led_cdev);

 del_timer_sync(&transient_data->timer);
 led_set_brightness_nosleep(led_cdev, transient_data->restore_state);
 kfree(transient_data);
}
