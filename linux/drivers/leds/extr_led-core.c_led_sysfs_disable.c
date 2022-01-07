
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int led_access; } ;


 int LED_SYSFS_DISABLE ;
 int lockdep_assert_held (int *) ;

void led_sysfs_disable(struct led_classdev *led_cdev)
{
 lockdep_assert_held(&led_cdev->led_access);

 led_cdev->flags |= LED_SYSFS_DISABLE;
}
