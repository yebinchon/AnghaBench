
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5592r_state {int gpiochip; scalar_t__ gpio_map; } ;


 int gpiochip_remove (int *) ;

__attribute__((used)) static void ad5592r_gpio_cleanup(struct ad5592r_state *st)
{
 if (st->gpio_map)
  gpiochip_remove(&st->gpiochip);
}
