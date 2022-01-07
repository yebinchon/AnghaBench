
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int work_flags; scalar_t__ max_brightness; scalar_t__ blink_brightness; } ;
struct heartbeat_trig_data {int timer; scalar_t__ phase; struct led_classdev* led_cdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_BLINK_SW ;
 struct heartbeat_trig_data* kzalloc (int,int ) ;
 int led_heartbeat_function (int *) ;
 int led_set_trigger_data (struct led_classdev*,struct heartbeat_trig_data*) ;
 int set_bit (int ,int *) ;
 int timer_setup (int *,int (*) (int *),int ) ;

__attribute__((used)) static int heartbeat_trig_activate(struct led_classdev *led_cdev)
{
 struct heartbeat_trig_data *heartbeat_data;

 heartbeat_data = kzalloc(sizeof(*heartbeat_data), GFP_KERNEL);
 if (!heartbeat_data)
  return -ENOMEM;

 led_set_trigger_data(led_cdev, heartbeat_data);
 heartbeat_data->led_cdev = led_cdev;

 timer_setup(&heartbeat_data->timer, led_heartbeat_function, 0);
 heartbeat_data->phase = 0;
 if (!led_cdev->blink_brightness)
  led_cdev->blink_brightness = led_cdev->max_brightness;
 led_heartbeat_function(&heartbeat_data->timer);
 set_bit(LED_BLINK_SW, &led_cdev->work_flags);

 return 0;
}
