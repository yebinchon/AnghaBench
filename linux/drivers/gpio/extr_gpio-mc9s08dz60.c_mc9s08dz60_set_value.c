
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc9s08dz60 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct mc9s08dz60* gpiochip_get_data (struct gpio_chip*) ;
 int mc9s08dz60_set (struct mc9s08dz60*,unsigned int,int) ;

__attribute__((used)) static void mc9s08dz60_set_value(struct gpio_chip *gc, unsigned offset, int val)
{
 struct mc9s08dz60 *mc9s = gpiochip_get_data(gc);

 mc9s08dz60_set(mc9s, offset, val);
}
