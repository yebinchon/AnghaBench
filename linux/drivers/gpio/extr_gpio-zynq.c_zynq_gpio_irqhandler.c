
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zynq_gpio {scalar_t__ base_addr; TYPE_1__* p_data; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {unsigned int max_bank; } ;


 scalar_t__ ZYNQ_GPIO_INTMASK_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTSTS_OFFSET (unsigned int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct zynq_gpio* gpiochip_get_data (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 int irq_desc_get_handler_data (struct irq_desc*) ;
 int readl_relaxed (scalar_t__) ;
 int zynq_gpio_handle_bank_irq (struct zynq_gpio*,unsigned int,int) ;

__attribute__((used)) static void zynq_gpio_irqhandler(struct irq_desc *desc)
{
 u32 int_sts, int_enb;
 unsigned int bank_num;
 struct zynq_gpio *gpio =
  gpiochip_get_data(irq_desc_get_handler_data(desc));
 struct irq_chip *irqchip = irq_desc_get_chip(desc);

 chained_irq_enter(irqchip, desc);

 for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++) {
  int_sts = readl_relaxed(gpio->base_addr +
     ZYNQ_GPIO_INTSTS_OFFSET(bank_num));
  int_enb = readl_relaxed(gpio->base_addr +
     ZYNQ_GPIO_INTMASK_OFFSET(bank_num));
  zynq_gpio_handle_bank_irq(gpio, bank_num, int_sts & ~int_enb);
 }

 chained_irq_exit(irqchip, desc);
}
