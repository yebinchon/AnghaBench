
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int trigger_lock; } ;


 int down_write (int *) ;
 int led_trigger_set (struct led_classdev*,int *) ;
 int up_write (int *) ;

void led_trigger_remove(struct led_classdev *led_cdev)
{
 down_write(&led_cdev->trigger_lock);
 led_trigger_set(led_cdev, ((void*)0));
 up_write(&led_cdev->trigger_lock);
}
