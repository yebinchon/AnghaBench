
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {TYPE_1__ vchan; } ;
struct axi_dmac {TYPE_2__ chan; } ;
typedef int irqreturn_t ;


 unsigned int AXI_DMAC_IRQ_EOT ;
 unsigned int AXI_DMAC_IRQ_SOT ;
 int AXI_DMAC_REG_IRQ_PENDING ;
 int AXI_DMAC_REG_TRANSFER_DONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int axi_dmac_read (struct axi_dmac*,int ) ;
 int axi_dmac_start_transfer (TYPE_2__*) ;
 int axi_dmac_transfer_done (TYPE_2__*,unsigned int) ;
 int axi_dmac_write (struct axi_dmac*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t axi_dmac_interrupt_handler(int irq, void *devid)
{
 struct axi_dmac *dmac = devid;
 unsigned int pending;
 bool start_next = 0;

 pending = axi_dmac_read(dmac, AXI_DMAC_REG_IRQ_PENDING);
 if (!pending)
  return IRQ_NONE;

 axi_dmac_write(dmac, AXI_DMAC_REG_IRQ_PENDING, pending);

 spin_lock(&dmac->chan.vchan.lock);

 if (pending & AXI_DMAC_IRQ_EOT) {
  unsigned int completed;

  completed = axi_dmac_read(dmac, AXI_DMAC_REG_TRANSFER_DONE);
  start_next = axi_dmac_transfer_done(&dmac->chan, completed);
 }

 if ((pending & AXI_DMAC_IRQ_SOT) || start_next)
  axi_dmac_start_transfer(&dmac->chan);
 spin_unlock(&dmac->chan.vchan.lock);

 return IRQ_HANDLED;
}
