
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int param_count; unsigned int* param; int fwnode; } ;
struct gpio_chip {TYPE_1__* parent; } ;
struct TYPE_2__ {int of_node; } ;


 int ENXIO ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int UNIPHIER_GPIO_IRQ_OFFSET ;
 int irq_create_fwspec_mapping (struct irq_fwspec*) ;
 int of_node_to_fwnode (int ) ;

__attribute__((used)) static int uniphier_gpio_to_irq(struct gpio_chip *chip, unsigned int offset)
{
 struct irq_fwspec fwspec;

 if (offset < UNIPHIER_GPIO_IRQ_OFFSET)
  return -ENXIO;

 fwspec.fwnode = of_node_to_fwnode(chip->parent->of_node);
 fwspec.param_count = 2;
 fwspec.param[0] = offset - UNIPHIER_GPIO_IRQ_OFFSET;




 fwspec.param[1] = IRQ_TYPE_LEVEL_HIGH;

 return irq_create_fwspec_mapping(&fwspec);
}
