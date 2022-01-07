
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ fsl_edma_err_handler (int,void*) ;
 scalar_t__ fsl_edma_tx_handler (int,void*) ;

__attribute__((used)) static irqreturn_t fsl_edma_irq_handler(int irq, void *dev_id)
{
 if (fsl_edma_tx_handler(irq, dev_id) == IRQ_HANDLED)
  return IRQ_HANDLED;

 return fsl_edma_err_handler(irq, dev_id);
}
