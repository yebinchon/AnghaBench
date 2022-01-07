
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc18xx_gpio_pin_ic {int lock; } ;
struct irq_data {int hwirq; struct lpc18xx_gpio_pin_ic* chip_data; } ;


 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 int LPC18XX_GPIO_PIN_IC_CIENF ;
 int LPC18XX_GPIO_PIN_IC_SIENF ;
 int lpc18xx_gpio_pin_ic_isel (struct lpc18xx_gpio_pin_ic*,int ,int) ;
 int lpc18xx_gpio_pin_ic_set (struct lpc18xx_gpio_pin_ic*,int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int lpc18xx_gpio_pin_ic_set_type(struct irq_data *d, unsigned int type)
{
 struct lpc18xx_gpio_pin_ic *ic = d->chip_data;

 raw_spin_lock(&ic->lock);

 if (type & IRQ_TYPE_LEVEL_HIGH) {
  lpc18xx_gpio_pin_ic_isel(ic, d->hwirq, 1);
  lpc18xx_gpio_pin_ic_set(ic, d->hwirq,
     LPC18XX_GPIO_PIN_IC_SIENF);
 } else if (type & IRQ_TYPE_LEVEL_LOW) {
  lpc18xx_gpio_pin_ic_isel(ic, d->hwirq, 1);
  lpc18xx_gpio_pin_ic_set(ic, d->hwirq,
     LPC18XX_GPIO_PIN_IC_CIENF);
 } else {
  lpc18xx_gpio_pin_ic_isel(ic, d->hwirq, 0);
 }

 raw_spin_unlock(&ic->lock);

 return 0;
}
