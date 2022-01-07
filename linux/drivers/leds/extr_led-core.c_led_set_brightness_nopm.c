
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int delayed_set_value; int set_brightness_work; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int __led_set_brightness (struct led_classdev*,int) ;
 int schedule_work (int *) ;

void led_set_brightness_nopm(struct led_classdev *led_cdev,
         enum led_brightness value)
{

 if (!__led_set_brightness(led_cdev, value))
  return;


 led_cdev->delayed_set_value = value;
 schedule_work(&led_cdev->set_brightness_work);
}
