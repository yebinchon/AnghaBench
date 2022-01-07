
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_irq_chip {int dummy; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int LPC32XX_INTC_RAW ;
 struct lpc32xx_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lpc32xx_ic_write (struct lpc32xx_irq_chip*,int ,int ) ;

__attribute__((used)) static void lpc32xx_irq_ack(struct irq_data *d)
{
 struct lpc32xx_irq_chip *ic = irq_data_get_irq_chip_data(d);
 u32 mask = BIT(d->hwirq);

 lpc32xx_ic_write(ic, LPC32XX_INTC_RAW, mask);
}
