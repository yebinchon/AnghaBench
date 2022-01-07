
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3601x_led {int lock; int regmap; } ;
struct led_classdev_flash {int dummy; } ;


 int LM3601X_ENABLE_REG ;
 int LM3601X_MODE_STROBE ;
 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int lm3601x_strobe_get(struct led_classdev_flash *fled_cdev, bool *state)
{
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);
 int strobe_state;
 int ret;

 mutex_lock(&led->lock);

 ret = regmap_read(led->regmap, LM3601X_ENABLE_REG, &strobe_state);
 if (ret < 0)
  goto out;

 *state = strobe_state & LM3601X_MODE_STROBE;

out:
 mutex_unlock(&led->lock);
 return ret;
}
