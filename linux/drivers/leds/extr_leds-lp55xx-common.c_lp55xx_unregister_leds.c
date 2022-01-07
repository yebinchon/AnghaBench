
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {int cdev; } ;
struct lp55xx_chip {int num_leds; } ;


 int led_classdev_unregister (int *) ;

void lp55xx_unregister_leds(struct lp55xx_led *led, struct lp55xx_chip *chip)
{
 int i;
 struct lp55xx_led *each;

 for (i = 0; i < chip->num_leds; i++) {
  each = led + i;
  led_classdev_unregister(&each->cdev);
 }
}
