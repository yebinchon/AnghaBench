
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_led {scalar_t__ chan_nr; int chip; int led_current; } ;


 scalar_t__ LP8501_REG_LED_CURRENT_BASE ;
 int lp55xx_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void lp8501_set_led_current(struct lp55xx_led *led, u8 led_current)
{
 led->led_current = led_current;
 lp55xx_write(led->chip, LP8501_REG_LED_CURRENT_BASE + led->chan_nr,
  led_current);
}
