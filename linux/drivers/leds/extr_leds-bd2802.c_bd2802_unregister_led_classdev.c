
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd2802_led {int cdev_led1r; int cdev_led1g; int cdev_led1b; int cdev_led2r; int cdev_led2g; int cdev_led2b; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void bd2802_unregister_led_classdev(struct bd2802_led *led)
{
 led_classdev_unregister(&led->cdev_led2b);
 led_classdev_unregister(&led->cdev_led2g);
 led_classdev_unregister(&led->cdev_led2r);
 led_classdev_unregister(&led->cdev_led1b);
 led_classdev_unregister(&led->cdev_led1g);
 led_classdev_unregister(&led->cdev_led1r);
}
