
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct vf610_gpio_port {scalar_t__ gpio_base; TYPE_1__* sdata; } ;
struct gpio_chip {unsigned int base; } ;
struct TYPE_2__ {scalar_t__ have_paddr; } ;


 unsigned long BIT (unsigned int) ;
 scalar_t__ GPIO_PDDR ;
 struct vf610_gpio_port* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_direction_input (unsigned int) ;
 unsigned long vf610_gpio_readl (scalar_t__) ;
 int vf610_gpio_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int vf610_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 struct vf610_gpio_port *port = gpiochip_get_data(chip);
 unsigned long mask = BIT(gpio);
 u32 val;

 if (port->sdata && port->sdata->have_paddr) {
  val = vf610_gpio_readl(port->gpio_base + GPIO_PDDR);
  val &= ~mask;
  vf610_gpio_writel(val, port->gpio_base + GPIO_PDDR);
 }

 return pinctrl_gpio_direction_input(chip->base + gpio);
}
