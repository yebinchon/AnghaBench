
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3601x_led {int flash_timeout; int lock; int regmap; } ;
struct led_classdev_flash {int dummy; } ;


 int LED_OFF ;
 int LM3601X_CFG_REG ;
 int LM3601X_ENABLE_REG ;
 int LM3601X_LOWER_STEP_US ;
 int LM3601X_MODE_IR_DRV ;
 int LM3601X_MODE_STROBE ;
 int LM3601X_MODE_TORCH ;
 int LM3601X_TIMEOUT_MASK ;
 int LM3601X_TIMEOUT_XOVER_US ;
 int LM3601X_UPPER_STEP_US ;
 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int lm3601x_read_faults (struct lm3601x_led*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int lm3601x_strobe_set(struct led_classdev_flash *fled_cdev,
    bool state)
{
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);
 int timeout_reg_val;
 int current_timeout;
 int ret;

 mutex_lock(&led->lock);

 ret = regmap_read(led->regmap, LM3601X_CFG_REG, &current_timeout);
 if (ret < 0)
  goto out;

 if (led->flash_timeout >= LM3601X_TIMEOUT_XOVER_US)
  timeout_reg_val = led->flash_timeout / LM3601X_UPPER_STEP_US + 0x07;
 else
  timeout_reg_val = led->flash_timeout / LM3601X_LOWER_STEP_US - 0x01;

 if (led->flash_timeout != current_timeout)
  ret = regmap_update_bits(led->regmap, LM3601X_CFG_REG,
     LM3601X_TIMEOUT_MASK, timeout_reg_val);

 if (state)
  ret = regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
     LM3601X_MODE_TORCH | LM3601X_MODE_IR_DRV,
     LM3601X_MODE_STROBE);
 else
  ret = regmap_update_bits(led->regmap, LM3601X_ENABLE_REG,
     LM3601X_MODE_STROBE, LED_OFF);

 ret = lm3601x_read_faults(led);
out:
 mutex_unlock(&led->lock);
 return ret;
}
