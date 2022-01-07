
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_chip {int dummy; } ;


 int LP5523_MAX_LEDS ;
 scalar_t__ LP5523_REG_LED_PWM_BASE ;
 int lp55xx_write (struct lp55xx_chip*,scalar_t__,int ) ;

__attribute__((used)) static void lp5523_turn_off_channels(struct lp55xx_chip *chip)
{
 int i;

 for (i = 0; i < LP5523_MAX_LEDS; i++)
  lp55xx_write(chip, LP5523_REG_LED_PWM_BASE + i, 0);
}
