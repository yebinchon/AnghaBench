
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int blink_delay_off; int blink_delay_on; int set_brightness_work; } ;


 int LED_INIT_DEFAULT_TRIGGER ;
 int flush_work (int *) ;
 int led_blink_set (struct led_classdev*,int *,int *) ;
 int pattern_init (struct led_classdev*) ;

__attribute__((used)) static int timer_trig_activate(struct led_classdev *led_cdev)
{
 if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
  pattern_init(led_cdev);




  led_cdev->flags &= ~LED_INIT_DEFAULT_TRIGGER;
 }





 flush_work(&led_cdev->set_brightness_work);
 led_blink_set(led_cdev, &led_cdev->blink_delay_on,
        &led_cdev->blink_delay_off);

 return 0;
}
