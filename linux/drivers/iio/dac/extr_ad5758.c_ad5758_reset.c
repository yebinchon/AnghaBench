
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {scalar_t__ gpio_reset; } ;


 int ad5758_soft_reset (struct ad5758_state*) ;
 int gpiod_set_value (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ad5758_reset(struct ad5758_state *st)
{
 if (st->gpio_reset) {
  gpiod_set_value(st->gpio_reset, 0);
  usleep_range(100, 1000);
  gpiod_set_value(st->gpio_reset, 1);
  usleep_range(100, 1000);

  return 0;
 } else {

  return ad5758_soft_reset(st);
 }
}
