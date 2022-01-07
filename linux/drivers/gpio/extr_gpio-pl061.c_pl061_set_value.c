
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl061 {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ BIT (unsigned int) ;
 struct pl061* gpiochip_get_data (struct gpio_chip*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
{
 struct pl061 *pl061 = gpiochip_get_data(gc);

 writeb(!!value << offset, pl061->base + (BIT(offset + 2)));
}
