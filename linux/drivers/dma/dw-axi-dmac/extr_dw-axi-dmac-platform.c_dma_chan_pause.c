
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct axi_dma_chan {int is_paused; TYPE_1__ vc; int chip; int id; } ;


 int BIT (int ) ;
 int DMAC_CHAN_SUSP_SHIFT ;
 int DMAC_CHAN_SUSP_WE_SHIFT ;
 int DMAC_CHEN ;
 int DWAXIDMAC_IRQ_SUSPENDED ;
 int EAGAIN ;
 int axi_chan_irq_clear (struct axi_dma_chan*,int) ;
 int axi_chan_irq_read (struct axi_dma_chan*) ;
 int axi_dma_ioread32 (int ,int ) ;
 int axi_dma_iowrite32 (int ,int ,int) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int dma_chan_pause(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 unsigned long flags;
 unsigned int timeout = 20;
 u32 val;

 spin_lock_irqsave(&chan->vc.lock, flags);

 val = axi_dma_ioread32(chan->chip, DMAC_CHEN);
 val |= BIT(chan->id) << DMAC_CHAN_SUSP_SHIFT |
        BIT(chan->id) << DMAC_CHAN_SUSP_WE_SHIFT;
 axi_dma_iowrite32(chan->chip, DMAC_CHEN, val);

 do {
  if (axi_chan_irq_read(chan) & DWAXIDMAC_IRQ_SUSPENDED)
   break;

  udelay(2);
 } while (--timeout);

 axi_chan_irq_clear(chan, DWAXIDMAC_IRQ_SUSPENDED);

 chan->is_paused = 1;

 spin_unlock_irqrestore(&chan->vc.lock, flags);

 return timeout ? 0 : -EAGAIN;
}
