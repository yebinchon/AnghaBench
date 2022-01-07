
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GIO ;
 struct sch_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int sch_gpio_reg_get (struct sch_gpio*,unsigned int,int ) ;

__attribute__((used)) static int sch_gpio_get_direction(struct gpio_chip *gc, unsigned gpio_num)
{
 struct sch_gpio *sch = gpiochip_get_data(gc);

 return sch_gpio_reg_get(sch, gpio_num, GIO);
}
