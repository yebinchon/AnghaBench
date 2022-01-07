
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_gpio {scalar_t__ register_base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_INTR_ENA_W1S ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ intr_reg (int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunderx_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct thunderx_gpio *txgpio = gpiochip_get_data(gc);

 writeq(GPIO_INTR_ENA_W1S,
        txgpio->register_base + intr_reg(irqd_to_hwirq(d)));
}
