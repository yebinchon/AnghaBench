
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {int timer; struct led_classdev* led_cdev; } ;
struct led_classdev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct transient_trig_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct transient_trig_data*) ;
 int timer_setup (int *,int ,int ) ;
 int transient_timer_function ;

__attribute__((used)) static int transient_trig_activate(struct led_classdev *led_cdev)
{
 struct transient_trig_data *tdata;

 tdata = kzalloc(sizeof(struct transient_trig_data), GFP_KERNEL);
 if (!tdata)
  return -ENOMEM;

 led_set_trigger_data(led_cdev, tdata);
 tdata->led_cdev = led_cdev;

 timer_setup(&tdata->timer, transient_timer_function, 0);

 return 0;
}
