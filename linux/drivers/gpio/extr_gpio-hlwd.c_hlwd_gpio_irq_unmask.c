
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int bgpio_lock; } ;
struct hlwd_gpio {TYPE_1__ gpioc; scalar_t__ regs; } ;


 int BIT (int ) ;
 scalar_t__ HW_GPIOB_INTMASK ;
 struct hlwd_gpio* gpiochip_get_data (int ) ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hlwd_gpio_irq_unmask(struct irq_data *data)
{
 struct hlwd_gpio *hlwd =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));
 unsigned long flags;
 u32 mask;

 spin_lock_irqsave(&hlwd->gpioc.bgpio_lock, flags);
 mask = ioread32be(hlwd->regs + HW_GPIOB_INTMASK);
 mask |= BIT(data->hwirq);
 iowrite32be(mask, hlwd->regs + HW_GPIOB_INTMASK);
 spin_unlock_irqrestore(&hlwd->gpioc.bgpio_lock, flags);
}
