
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_led {size_t chan_nr; int brightness; struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; } ;






 int lp55xx_write (struct lp55xx_chip*,int const,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp5562_led_brightness(struct lp55xx_led *led)
{
 struct lp55xx_chip *chip = led->chip;
 static const u8 addr[] = {
  129,
  130,
  131,
  128,
 };
 int ret;

 mutex_lock(&chip->lock);
 ret = lp55xx_write(chip, addr[led->chan_nr], led->brightness);
 mutex_unlock(&chip->lock);

 return ret;
}
