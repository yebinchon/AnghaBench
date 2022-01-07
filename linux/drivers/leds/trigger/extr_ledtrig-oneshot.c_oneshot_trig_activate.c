
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oneshot_trig_data {int dummy; } ;
struct led_classdev {int flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_INIT_DEFAULT_TRIGGER ;
 struct oneshot_trig_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct oneshot_trig_data*) ;
 int pattern_init (struct led_classdev*) ;

__attribute__((used)) static int oneshot_trig_activate(struct led_classdev *led_cdev)
{
 struct oneshot_trig_data *oneshot_data;

 oneshot_data = kzalloc(sizeof(*oneshot_data), GFP_KERNEL);
 if (!oneshot_data)
  return -ENOMEM;

 led_set_trigger_data(led_cdev, oneshot_data);

 if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
  pattern_init(led_cdev);




  led_cdev->flags &= ~LED_INIT_DEFAULT_TRIGGER;
 }

 return 0;
}
