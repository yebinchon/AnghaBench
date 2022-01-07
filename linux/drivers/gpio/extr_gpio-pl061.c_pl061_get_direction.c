
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl061 {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ GPIODIR ;
 struct pl061* gpiochip_get_data (struct gpio_chip*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int pl061_get_direction(struct gpio_chip *gc, unsigned offset)
{
 struct pl061 *pl061 = gpiochip_get_data(gc);

 return !(readb(pl061->base + GPIODIR) & BIT(offset));
}
