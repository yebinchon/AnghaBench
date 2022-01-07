
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_chan {int tasklet; int chan; } ;
typedef int irqreturn_t ;


 int CSR ;
 int IRQ_HANDLED ;
 int chan2dev (int *) ;
 int channel_readl (struct txx9dmac_chan*,int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int disable_irq_nosync (int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t txx9dmac_chan_interrupt(int irq, void *dev_id)
{
 struct txx9dmac_chan *dc = dev_id;

 dev_vdbg(chan2dev(&dc->chan), "interrupt: status=%#x\n",
   channel_readl(dc, CSR));

 tasklet_schedule(&dc->tasklet);




 disable_irq_nosync(irq);

 return IRQ_HANDLED;
}
