
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timb_dma {int tasklet; scalar_t__ membase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TIMBDMA_IER ;
 scalar_t__ TIMBDMA_IPR ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t td_irq(int irq, void *devid)
{
 struct timb_dma *td = devid;
 u32 ipr = ioread32(td->membase + TIMBDMA_IPR);

 if (ipr) {

  iowrite32(0, td->membase + TIMBDMA_IER);

  tasklet_schedule(&td->tasklet);

  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
