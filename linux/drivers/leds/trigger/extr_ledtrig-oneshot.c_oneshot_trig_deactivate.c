
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oneshot_trig_data {int dummy; } ;
struct led_classdev {int dummy; } ;


 int LED_OFF ;
 int kfree (struct oneshot_trig_data*) ;
 struct oneshot_trig_data* led_get_trigger_data (struct led_classdev*) ;
 int led_set_brightness (struct led_classdev*,int ) ;

__attribute__((used)) static void oneshot_trig_deactivate(struct led_classdev *led_cdev)
{
 struct oneshot_trig_data *oneshot_data = led_get_trigger_data(led_cdev);

 kfree(oneshot_data);


 led_set_brightness(led_cdev, LED_OFF);
}
