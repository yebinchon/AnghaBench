
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; scalar_t__ max_brightness; scalar_t__ blink_brightness; } ;
struct activity_data {int timer; struct led_classdev* led_cdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_BLINK_SW ;
 struct activity_data* kzalloc (int,int ) ;
 int led_activity_function (int *) ;
 int led_set_trigger_data (struct led_classdev*,struct activity_data*) ;
 int set_bit (int ,int *) ;
 int timer_setup (int *,int (*) (int *),int ) ;

__attribute__((used)) static int activity_activate(struct led_classdev *led_cdev)
{
 struct activity_data *activity_data;

 activity_data = kzalloc(sizeof(*activity_data), GFP_KERNEL);
 if (!activity_data)
  return -ENOMEM;

 led_set_trigger_data(led_cdev, activity_data);

 activity_data->led_cdev = led_cdev;
 timer_setup(&activity_data->timer, led_activity_function, 0);
 if (!led_cdev->blink_brightness)
  led_cdev->blink_brightness = led_cdev->max_brightness;
 led_activity_function(&activity_data->timer);
 set_bit(LED_BLINK_SW, &led_cdev->work_flags);

 return 0;
}
