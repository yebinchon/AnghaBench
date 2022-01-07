
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_kscan_drv {int matrix_sz; int input; int kscan_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LPC32XX_KS_IRQ (int ) ;
 int input_sync (int ) ;
 int lpc32xx_mod_states (struct lpc32xx_kscan_drv*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t lpc32xx_kscan_irq(int irq, void *dev_id)
{
 struct lpc32xx_kscan_drv *kscandat = dev_id;
 int i;

 for (i = 0; i < kscandat->matrix_sz; i++)
  lpc32xx_mod_states(kscandat, i);

 writel(1, LPC32XX_KS_IRQ(kscandat->kscan_base));

 input_sync(kscandat->input);

 return IRQ_HANDLED;
}
