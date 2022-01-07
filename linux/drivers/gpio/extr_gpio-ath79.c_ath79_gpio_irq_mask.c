
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct ath79_gpio_ctrl {int lock; } ;


 int AR71XX_GPIO_REG_INT_MASK ;
 int BIT (int ) ;
 int ath79_gpio_update_bits (struct ath79_gpio_ctrl*,int ,int ,int ) ;
 struct ath79_gpio_ctrl* irq_data_to_ath79_gpio (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath79_gpio_irq_mask(struct irq_data *data)
{
 struct ath79_gpio_ctrl *ctrl = irq_data_to_ath79_gpio(data);
 u32 mask = BIT(irqd_to_hwirq(data));
 unsigned long flags;

 raw_spin_lock_irqsave(&ctrl->lock, flags);
 ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_MASK, mask, 0);
 raw_spin_unlock_irqrestore(&ctrl->lock, flags);
}
