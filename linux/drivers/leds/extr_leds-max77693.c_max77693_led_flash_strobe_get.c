
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_sub_led {scalar_t__ fled_id; } ;
struct max77693_led_device {scalar_t__ strobing_sub_led_id; int lock; } ;
struct led_classdev_flash {int dummy; } ;


 int EINVAL ;
 struct max77693_sub_led* flcdev_to_sub_led (struct led_classdev_flash*) ;
 int max77693_get_strobe_status (struct max77693_led_device*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct max77693_led_device* sub_led_to_led (struct max77693_sub_led*) ;

__attribute__((used)) static int max77693_led_flash_strobe_get(
    struct led_classdev_flash *fled_cdev,
    bool *state)
{
 struct max77693_sub_led *sub_led = flcdev_to_sub_led(fled_cdev);
 struct max77693_led_device *led = sub_led_to_led(sub_led);
 int ret;

 if (!state)
  return -EINVAL;

 mutex_lock(&led->lock);

 ret = max77693_get_strobe_status(led, state);

 *state = !!(*state && (led->strobing_sub_led_id == sub_led->fled_id));

 mutex_unlock(&led->lock);

 return ret;
}
