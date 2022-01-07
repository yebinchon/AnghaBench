
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_irq_chip {int dummy; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int EINVAL ;




 int LPC32XX_INTC_POL ;
 int LPC32XX_INTC_TYPE ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct lpc32xx_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 int lpc32xx_ic_read (struct lpc32xx_irq_chip*,int ) ;
 int lpc32xx_ic_write (struct lpc32xx_irq_chip*,int ,int ) ;
 int pr_info (char*,unsigned int) ;

__attribute__((used)) static int lpc32xx_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct lpc32xx_irq_chip *ic = irq_data_get_irq_chip_data(d);
 u32 val, mask = BIT(d->hwirq);
 bool high, edge;

 switch (type) {
 case 130:
  edge = 1;
  high = 1;
  break;
 case 131:
  edge = 1;
  high = 0;
  break;
 case 129:
  edge = 0;
  high = 1;
  break;
 case 128:
  edge = 0;
  high = 0;
  break;
 default:
  pr_info("unsupported irq type %d\n", type);
  return -EINVAL;
 }

 irqd_set_trigger_type(d, type);

 val = lpc32xx_ic_read(ic, LPC32XX_INTC_POL);
 if (high)
  val |= mask;
 else
  val &= ~mask;
 lpc32xx_ic_write(ic, LPC32XX_INTC_POL, val);

 val = lpc32xx_ic_read(ic, LPC32XX_INTC_TYPE);
 if (edge) {
  val |= mask;
  irq_set_handler_locked(d, handle_edge_irq);
 } else {
  val &= ~mask;
  irq_set_handler_locked(d, handle_level_irq);
 }
 lpc32xx_ic_write(ic, LPC32XX_INTC_TYPE, val);

 return 0;
}
