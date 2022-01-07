
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lm3601x_led {int lock; int regmap; } ;
struct led_classdev_flash {int dummy; } ;


 int LED_OFF ;
 int LM3601X_ENABLE_REG ;
 int LM3601X_LED_FLASH_REG ;
 int LM3601X_MODE_STROBE ;
 int LM3601X_STROBE_REG_DIV ;
 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int lm3601x_read_faults (struct lm3601x_led*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lm3601x_flash_brightness_set(struct led_classdev_flash *fled_cdev,
     u32 brightness)
{
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);
 u8 brightness_val;
 int ret;

 mutex_lock(&led->lock);
 ret = lm3601x_read_faults(led);
 if (ret < 0)
  goto out;

 if (brightness == LED_OFF) {
  ret = regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
     LM3601X_MODE_STROBE, LED_OFF);
  goto out;
 }

 brightness_val = brightness / LM3601X_STROBE_REG_DIV;

 ret = regmap_write(led->regmap, LM3601X_LED_FLASH_REG, brightness_val);
out:
 mutex_unlock(&led->lock);
 return ret;
}
