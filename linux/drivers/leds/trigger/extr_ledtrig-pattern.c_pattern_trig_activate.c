
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_trig_data {int is_indefinite; int last_repeat; int timer; struct led_classdev* led_cdev; int lock; } ;
struct led_classdev {int activated; int flags; int * pattern_clear; int * pattern_set; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_INIT_DEFAULT_TRIGGER ;
 int dev_warn (int ,char*) ;
 struct pattern_trig_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct pattern_trig_data*) ;
 int mutex_init (int *) ;
 int pattern_init (struct led_classdev*) ;
 int pattern_trig_timer_function ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pattern_trig_activate(struct led_classdev *led_cdev)
{
 struct pattern_trig_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 if (!!led_cdev->pattern_set ^ !!led_cdev->pattern_clear) {
  dev_warn(led_cdev->dev,
    "Hardware pattern ops validation failed\n");
  led_cdev->pattern_set = ((void*)0);
  led_cdev->pattern_clear = ((void*)0);
 }

 data->is_indefinite = 1;
 data->last_repeat = -1;
 mutex_init(&data->lock);
 data->led_cdev = led_cdev;
 led_set_trigger_data(led_cdev, data);
 timer_setup(&data->timer, pattern_trig_timer_function, 0);
 led_cdev->activated = 1;

 if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
  pattern_init(led_cdev);




  led_cdev->flags &= ~LED_INIT_DEFAULT_TRIGGER;
 }

 return 0;
}
