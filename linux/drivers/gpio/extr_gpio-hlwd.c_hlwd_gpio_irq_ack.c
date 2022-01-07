
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct hlwd_gpio {scalar_t__ regs; } ;


 int BIT (int ) ;
 scalar_t__ HW_GPIOB_INTFLAG ;
 struct hlwd_gpio* gpiochip_get_data (int ) ;
 int iowrite32be (int ,scalar_t__) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void hlwd_gpio_irq_ack(struct irq_data *data)
{
 struct hlwd_gpio *hlwd =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));

 iowrite32be(BIT(data->hwirq), hlwd->regs + HW_GPIOB_INTFLAG);
}
