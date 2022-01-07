
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {int restore_state; scalar_t__ activate; struct led_classdev* led_cdev; } ;
struct timer_list {int dummy; } ;
struct led_classdev {int dummy; } ;


 struct transient_trig_data* from_timer (int ,struct timer_list*,int ) ;
 int led_set_brightness_nosleep (struct led_classdev*,int ) ;
 int timer ;
 struct transient_trig_data* transient_data ;

__attribute__((used)) static void transient_timer_function(struct timer_list *t)
{
 struct transient_trig_data *transient_data =
  from_timer(transient_data, t, timer);
 struct led_classdev *led_cdev = transient_data->led_cdev;

 transient_data->activate = 0;
 led_set_brightness_nosleep(led_cdev, transient_data->restore_state);
}
