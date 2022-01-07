
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct altera_gpio_chip {unsigned int interrupt_trigger; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_NONE ;
 struct altera_gpio_chip* gpiochip_get_data (int ) ;
 int handle_bad_irq ;
 int handle_level_irq ;
 int handle_simple_irq ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static int altera_gpio_irq_set_type(struct irq_data *d,
       unsigned int type)
{
 struct altera_gpio_chip *altera_gc;

 altera_gc = gpiochip_get_data(irq_data_get_irq_chip_data(d));

 if (type == IRQ_TYPE_NONE) {
  irq_set_handler_locked(d, handle_bad_irq);
  return 0;
 }
 if (type == altera_gc->interrupt_trigger) {
  if (type == IRQ_TYPE_LEVEL_HIGH)
   irq_set_handler_locked(d, handle_level_irq);
  else
   irq_set_handler_locked(d, handle_simple_irq);
  return 0;
 }
 irq_set_handler_locked(d, handle_bad_irq);
 return -EINVAL;
}
