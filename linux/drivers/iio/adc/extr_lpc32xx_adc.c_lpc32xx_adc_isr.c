
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_adc_state {int value; int completion; int adc_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LPC32XXAD_VALUE (int ) ;
 int LPC32XXAD_VALUE_MASK ;
 int __raw_readl (int ) ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t lpc32xx_adc_isr(int irq, void *dev_id)
{
 struct lpc32xx_adc_state *st = dev_id;


 st->value = __raw_readl(LPC32XXAD_VALUE(st->adc_base)) &
  LPC32XXAD_VALUE_MASK;
 complete(&st->completion);

 return IRQ_HANDLED;
}
