
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max77693_sub_led {int fled_cdev; int v4l2_flash; } ;
struct max77693_led_device {int lock; scalar_t__ iout_joint; struct max77693_sub_led* sub_leds; } ;


 size_t FLED1 ;
 size_t FLED2 ;
 int led_classdev_flash_unregister (int *) ;
 scalar_t__ max77693_fled_used (struct max77693_led_device*,size_t) ;
 int mutex_destroy (int *) ;
 struct max77693_led_device* platform_get_drvdata (struct platform_device*) ;
 int v4l2_flash_release (int ) ;

__attribute__((used)) static int max77693_led_remove(struct platform_device *pdev)
{
 struct max77693_led_device *led = platform_get_drvdata(pdev);
 struct max77693_sub_led *sub_leds = led->sub_leds;

 if (led->iout_joint || max77693_fled_used(led, FLED1)) {
  v4l2_flash_release(sub_leds[FLED1].v4l2_flash);
  led_classdev_flash_unregister(&sub_leds[FLED1].fled_cdev);
 }

 if (!led->iout_joint && max77693_fled_used(led, FLED2)) {
  v4l2_flash_release(sub_leds[FLED2].v4l2_flash);
  led_classdev_flash_unregister(&sub_leds[FLED2].fled_cdev);
 }

 mutex_destroy(&led->lock);

 return 0;
}
