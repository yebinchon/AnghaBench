
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_beeper {int desc; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void gpio_beeper_toggle(struct gpio_beeper *beep, bool on)
{
 gpiod_set_value_cansleep(beep->desc, on);
}
