
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {int complete; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LPI2C_MSR ;
 unsigned int MSR_NDF ;
 unsigned int MSR_RDF ;
 unsigned int MSR_TDF ;
 int complete (int *) ;
 int lpi2c_imx_intctrl (struct lpi2c_imx_struct*,int ) ;
 int lpi2c_imx_read_rxfifo (struct lpi2c_imx_struct*) ;
 int lpi2c_imx_write_txfifo (struct lpi2c_imx_struct*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t lpi2c_imx_isr(int irq, void *dev_id)
{
 struct lpi2c_imx_struct *lpi2c_imx = dev_id;
 unsigned int temp;

 lpi2c_imx_intctrl(lpi2c_imx, 0);
 temp = readl(lpi2c_imx->base + LPI2C_MSR);

 if (temp & MSR_RDF)
  lpi2c_imx_read_rxfifo(lpi2c_imx);

 if (temp & MSR_TDF)
  lpi2c_imx_write_txfifo(lpi2c_imx);

 if (temp & MSR_NDF)
  complete(&lpi2c_imx->complete);

 return IRQ_HANDLED;
}
