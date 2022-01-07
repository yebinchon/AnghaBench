
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_trig_data {int timer; } ;
struct led_classdev {int activated; int (* pattern_clear ) (struct led_classdev*) ;struct pattern_trig_data* trigger_data; } ;


 int LED_OFF ;
 int del_timer_sync (int *) ;
 int kfree (struct pattern_trig_data*) ;
 int led_set_brightness (struct led_classdev*,int ) ;
 int stub1 (struct led_classdev*) ;

__attribute__((used)) static void pattern_trig_deactivate(struct led_classdev *led_cdev)
{
 struct pattern_trig_data *data = led_cdev->trigger_data;

 if (!led_cdev->activated)
  return;

 if (led_cdev->pattern_clear)
  led_cdev->pattern_clear(led_cdev);

 del_timer_sync(&data->timer);

 led_set_brightness(led_cdev, LED_OFF);
 kfree(data);
 led_cdev->activated = 0;
}
