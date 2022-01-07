
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int (* flash_resume ) (struct led_classdev*) ;int brightness; } ;


 int LED_SUSPENDED ;
 int led_set_brightness_nopm (struct led_classdev*,int ) ;
 int stub1 (struct led_classdev*) ;

void led_classdev_resume(struct led_classdev *led_cdev)
{
 led_set_brightness_nopm(led_cdev, led_cdev->brightness);

 if (led_cdev->flash_resume)
  led_cdev->flash_resume(led_cdev);

 led_cdev->flags &= ~LED_SUSPENDED;
}
