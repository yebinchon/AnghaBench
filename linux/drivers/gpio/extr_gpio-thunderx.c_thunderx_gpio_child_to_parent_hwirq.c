
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_gpio {int base_msi; } ;
struct gpio_chip {int dummy; } ;


 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int thunderx_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
            unsigned int child,
            unsigned int child_type,
            unsigned int *parent,
            unsigned int *parent_type)
{
 struct thunderx_gpio *txgpio = gpiochip_get_data(gc);

 *parent = txgpio->base_msi + (2 * child);
 *parent_type = IRQ_TYPE_LEVEL_HIGH;
 return 0;
}
