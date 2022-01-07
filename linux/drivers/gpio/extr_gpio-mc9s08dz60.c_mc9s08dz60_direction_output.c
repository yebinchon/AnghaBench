
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc9s08dz60 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct mc9s08dz60* gpiochip_get_data (struct gpio_chip*) ;
 int mc9s08dz60_set (struct mc9s08dz60*,unsigned int,int) ;

__attribute__((used)) static int mc9s08dz60_direction_output(struct gpio_chip *gc,
           unsigned offset, int val)
{
 struct mc9s08dz60 *mc9s = gpiochip_get_data(gc);

 return mc9s08dz60_set(mc9s, offset, val);
}
