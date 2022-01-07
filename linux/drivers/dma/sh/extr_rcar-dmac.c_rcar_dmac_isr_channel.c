
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {TYPE_2__* device; } ;
struct rcar_dmac_chan {int index; TYPE_1__ chan; int lock; } ;
struct rcar_dmac {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RCAR_DMACHCLR ;
 int RCAR_DMACHCR ;
 int RCAR_DMACHCR_CAE ;
 int RCAR_DMACHCR_DE ;
 int RCAR_DMACHCR_DSE ;
 int RCAR_DMACHCR_TE ;
 int dev_err (int ,char*) ;
 int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;
 int rcar_dmac_chan_reinit (struct rcar_dmac_chan*) ;
 int rcar_dmac_chan_write (struct rcar_dmac_chan*,int ,int) ;
 int rcar_dmac_chcr_de_barrier (struct rcar_dmac_chan*) ;
 int rcar_dmac_isr_desc_stage_end (struct rcar_dmac_chan*) ;
 int rcar_dmac_isr_transfer_end (struct rcar_dmac_chan*) ;
 int rcar_dmac_write (struct rcar_dmac*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct rcar_dmac* to_rcar_dmac (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t rcar_dmac_isr_channel(int irq, void *dev)
{
 u32 mask = RCAR_DMACHCR_DSE | RCAR_DMACHCR_TE;
 struct rcar_dmac_chan *chan = dev;
 irqreturn_t ret = IRQ_NONE;
 bool reinit = 0;
 u32 chcr;

 spin_lock(&chan->lock);

 chcr = rcar_dmac_chan_read(chan, RCAR_DMACHCR);
 if (chcr & RCAR_DMACHCR_CAE) {
  struct rcar_dmac *dmac = to_rcar_dmac(chan->chan.device);






  rcar_dmac_write(dmac, RCAR_DMACHCLR, 1 << chan->index);
  rcar_dmac_chcr_de_barrier(chan);
  reinit = 1;
  goto spin_lock_end;
 }

 if (chcr & RCAR_DMACHCR_TE)
  mask |= RCAR_DMACHCR_DE;
 rcar_dmac_chan_write(chan, RCAR_DMACHCR, chcr & ~mask);
 if (mask & RCAR_DMACHCR_DE)
  rcar_dmac_chcr_de_barrier(chan);

 if (chcr & RCAR_DMACHCR_DSE)
  ret |= rcar_dmac_isr_desc_stage_end(chan);

 if (chcr & RCAR_DMACHCR_TE)
  ret |= rcar_dmac_isr_transfer_end(chan);

spin_lock_end:
 spin_unlock(&chan->lock);

 if (reinit) {
  dev_err(chan->chan.device->dev, "Channel Address Error\n");

  rcar_dmac_chan_reinit(chan);
  ret = IRQ_HANDLED;
 }

 return ret;
}
