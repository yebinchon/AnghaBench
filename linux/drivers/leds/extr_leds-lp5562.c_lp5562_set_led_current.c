
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_led {size_t chan_nr; int chip; int led_current; } ;






 int lp55xx_write (int ,int const,int ) ;

__attribute__((used)) static void lp5562_set_led_current(struct lp55xx_led *led, u8 led_current)
{
 static const u8 addr[] = {
  129,
  130,
  131,
  128,
 };

 led->led_current = led_current;
 lp55xx_write(led->chip, addr[led->chan_nr], led_current);
}
