
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6507_led {scalar_t__ bank; scalar_t__ blink; struct tca6507_chip* chip; } ;
struct tca6507_chip {struct bank* bank; } ;
struct bank {int level_use; int time_use; } ;



__attribute__((used)) static void led_release(struct tca6507_led *led)
{

 struct tca6507_chip *tca = led->chip;
 if (led->bank >= 0) {
  struct bank *b = tca->bank + led->bank;
  if (led->blink)
   b->time_use--;
  b->level_use--;
 }
 led->blink = 0;
 led->bank = -1;
}
