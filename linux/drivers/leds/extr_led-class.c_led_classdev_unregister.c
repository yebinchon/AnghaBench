
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int led_access; int node; int dev; int set_brightness_work; int trigger_lock; scalar_t__ trigger; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int LED_BRIGHT_HW_CHANGED ;
 int LED_OFF ;
 int LED_UNREGISTERING ;
 int device_unregister (int ) ;
 int down_write (int *) ;
 int flush_work (int *) ;
 int led_remove_brightness_hw_changed (struct led_classdev*) ;
 int led_set_brightness (struct led_classdev*,int ) ;
 int led_stop_software_blink (struct led_classdev*) ;
 int led_trigger_set (struct led_classdev*,int *) ;
 int leds_list_lock ;
 int list_del (int *) ;
 int mutex_destroy (int *) ;
 int up_write (int *) ;

void led_classdev_unregister(struct led_classdev *led_cdev)
{
 if (IS_ERR_OR_NULL(led_cdev->dev))
  return;
 led_cdev->flags |= LED_UNREGISTERING;


 led_stop_software_blink(led_cdev);

 led_set_brightness(led_cdev, LED_OFF);

 flush_work(&led_cdev->set_brightness_work);

 if (led_cdev->flags & LED_BRIGHT_HW_CHANGED)
  led_remove_brightness_hw_changed(led_cdev);

 device_unregister(led_cdev->dev);

 down_write(&leds_list_lock);
 list_del(&led_cdev->node);
 up_write(&leds_list_lock);

 mutex_destroy(&led_cdev->led_access);
}
