
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dw_edma_interrupt (int,void*,int) ;

__attribute__((used)) static irqreturn_t dw_edma_interrupt_common(int irq, void *data)
{
 dw_edma_interrupt(irq, data, 1);
 dw_edma_interrupt(irq, data, 0);

 return IRQ_HANDLED;
}
