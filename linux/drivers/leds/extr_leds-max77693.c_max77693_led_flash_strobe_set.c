
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_sub_led {int fled_id; scalar_t__ flash_timeout; } ;
struct max77693_led_device {scalar_t__ current_flash_timeout; int strobing_sub_led_id; int lock; } ;
struct led_classdev_flash {int dummy; } ;


 int MODE_FLASH (int) ;
 struct max77693_sub_led* flcdev_to_sub_led (struct led_classdev_flash*) ;
 int max77693_add_mode (struct max77693_led_device*,int ) ;
 int max77693_clear_mode (struct max77693_led_device*,int ) ;
 int max77693_get_flash_faults (struct max77693_sub_led*) ;
 int max77693_set_timeout (struct max77693_led_device*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct max77693_led_device* sub_led_to_led (struct max77693_sub_led*) ;

__attribute__((used)) static int max77693_led_flash_strobe_set(
    struct led_classdev_flash *fled_cdev,
    bool state)
{
 struct max77693_sub_led *sub_led = flcdev_to_sub_led(fled_cdev);
 struct max77693_led_device *led = sub_led_to_led(sub_led);
 int fled_id = sub_led->fled_id;
 int ret;

 mutex_lock(&led->lock);

 if (!state) {
  ret = max77693_clear_mode(led, MODE_FLASH(fled_id));
  goto unlock;
 }

 if (sub_led->flash_timeout != led->current_flash_timeout) {
  ret = max77693_set_timeout(led, sub_led->flash_timeout);
  if (ret < 0)
   goto unlock;
 }

 led->strobing_sub_led_id = fled_id;

 ret = max77693_add_mode(led, MODE_FLASH(fled_id));
 if (ret < 0)
  goto unlock;

 ret = max77693_get_flash_faults(sub_led);

unlock:
 mutex_unlock(&led->lock);
 return ret;
}
