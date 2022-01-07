
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int led_cdev; } ;


 int led_classdev_unregister (int *) ;

void led_classdev_flash_unregister(struct led_classdev_flash *fled_cdev)
{
 if (!fled_cdev)
  return;

 led_classdev_unregister(&fled_cdev->led_cdev);
}
