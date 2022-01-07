
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc18xx_gpio_pin_ic {int lock; } ;
struct irq_data {int hwirq; struct lpc18xx_gpio_pin_ic* chip_data; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_MASK ;
 int LPC18XX_GPIO_PIN_IC_SIENF ;
 int LPC18XX_GPIO_PIN_IC_SIENR ;
 int irq_chip_unmask_parent (struct irq_data*) ;
 int irqd_get_trigger_type (struct irq_data*) ;
 int lpc18xx_gpio_pin_ic_set (struct lpc18xx_gpio_pin_ic*,int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void lpc18xx_gpio_pin_ic_unmask(struct irq_data *d)
{
 struct lpc18xx_gpio_pin_ic *ic = d->chip_data;
 u32 type = irqd_get_trigger_type(d);

 raw_spin_lock(&ic->lock);

 if (type & IRQ_TYPE_LEVEL_MASK || type & IRQ_TYPE_EDGE_RISING)
  lpc18xx_gpio_pin_ic_set(ic, d->hwirq,
     LPC18XX_GPIO_PIN_IC_SIENR);

 if (type & IRQ_TYPE_EDGE_FALLING)
  lpc18xx_gpio_pin_ic_set(ic, d->hwirq,
     LPC18XX_GPIO_PIN_IC_SIENF);

 raw_spin_unlock(&ic->lock);

 irq_chip_unmask_parent(d);
}
