
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm3601x_led {int lock; int flash_timeout; } ;
struct led_classdev_flash {int dummy; } ;


 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm3601x_flash_timeout_set(struct led_classdev_flash *fled_cdev,
    u32 timeout)
{
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);

 mutex_lock(&led->lock);

 led->flash_timeout = timeout;

 mutex_unlock(&led->lock);

 return 0;
}
