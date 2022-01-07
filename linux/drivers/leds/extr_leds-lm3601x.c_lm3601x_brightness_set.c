
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3601x_led {scalar_t__ led_mode; int lock; int regmap; } ;
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int LM3601X_ENABLE_REG ;
 scalar_t__ LM3601X_LED_TORCH ;
 int LM3601X_LED_TORCH_REG ;
 int LM3601X_MODE_IR_DRV ;
 int LM3601X_MODE_TORCH ;
 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 struct led_classdev_flash* lcdev_to_flcdev (struct led_classdev*) ;
 int lm3601x_read_faults (struct lm3601x_led*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lm3601x_brightness_set(struct led_classdev *cdev,
     enum led_brightness brightness)
{
 struct led_classdev_flash *fled_cdev = lcdev_to_flcdev(cdev);
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);
 int ret, led_mode_val;

 mutex_lock(&led->lock);

 ret = lm3601x_read_faults(led);
 if (ret < 0)
  goto out;

 if (led->led_mode == LM3601X_LED_TORCH)
  led_mode_val = LM3601X_MODE_TORCH;
 else
  led_mode_val = LM3601X_MODE_IR_DRV;

 if (brightness == LED_OFF) {
  ret = regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
     led_mode_val, LED_OFF);
  goto out;
 }

 ret = regmap_write(led->regmap, LM3601X_LED_TORCH_REG, brightness);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
    LM3601X_MODE_TORCH | LM3601X_MODE_IR_DRV,
    led_mode_val);
out:
 mutex_unlock(&led->lock);
 return ret;
}
