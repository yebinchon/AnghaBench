
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int cleanup_task; int state; } ;
typedef int irqreturn_t ;


 int IOAT_RUN ;
 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

irqreturn_t ioat_dma_do_interrupt_msix(int irq, void *data)
{
 struct ioatdma_chan *ioat_chan = data;

 if (test_bit(IOAT_RUN, &ioat_chan->state))
  tasklet_schedule(&ioat_chan->cleanup_task);

 return IRQ_HANDLED;
}
