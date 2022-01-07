
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {int brightness; scalar_t__ chan_nr; struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; } ;


 scalar_t__ LP5521_REG_LED_PWM_BASE ;
 int lp55xx_write (struct lp55xx_chip*,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp5521_led_brightness(struct lp55xx_led *led)
{
 struct lp55xx_chip *chip = led->chip;
 int ret;

 mutex_lock(&chip->lock);
 ret = lp55xx_write(chip, LP5521_REG_LED_PWM_BASE + led->chan_nr,
  led->brightness);
 mutex_unlock(&chip->lock);

 return ret;
}
