
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7606_state {scalar_t__ gpio_reset; } ;


 int ENODEV ;
 int gpiod_set_value (scalar_t__,int) ;
 int ndelay (int) ;

__attribute__((used)) static int ad7606_reset(struct ad7606_state *st)
{
 if (st->gpio_reset) {
  gpiod_set_value(st->gpio_reset, 1);
  ndelay(100);
  gpiod_set_value(st->gpio_reset, 0);
  return 0;
 }

 return -ENODEV;
}
