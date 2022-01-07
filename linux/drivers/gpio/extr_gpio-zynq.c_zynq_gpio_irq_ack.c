
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_gpio {scalar_t__ base_addr; } ;
struct irq_data {unsigned int hwirq; } ;


 int BIT (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTSTS_OFFSET (unsigned int) ;
 struct zynq_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel_relaxed (int ,scalar_t__) ;
 int zynq_gpio_get_bank_pin (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ;

__attribute__((used)) static void zynq_gpio_irq_ack(struct irq_data *irq_data)
{
 unsigned int device_pin_num, bank_num, bank_pin_num;
 struct zynq_gpio *gpio =
  gpiochip_get_data(irq_data_get_irq_chip_data(irq_data));

 device_pin_num = irq_data->hwirq;
 zynq_gpio_get_bank_pin(device_pin_num, &bank_num, &bank_pin_num, gpio);
 writel_relaxed(BIT(bank_pin_num),
         gpio->base_addr + ZYNQ_GPIO_INTSTS_OFFSET(bank_num));
}
