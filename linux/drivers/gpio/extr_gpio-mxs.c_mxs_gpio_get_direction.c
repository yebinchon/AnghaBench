
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_gpio_port {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ PINCTRL_DOE (struct mxs_gpio_port*) ;
 struct mxs_gpio_port* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int mxs_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
{
 struct mxs_gpio_port *port = gpiochip_get_data(gc);
 u32 mask = 1 << offset;
 u32 dir;

 dir = readl(port->base + PINCTRL_DOE(port));
 return !(dir & mask);
}
