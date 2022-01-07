
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct TYPE_2__ {int lock; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;


 int axi_chan_disable (struct axi_dma_chan*) ;
 int axi_chan_is_hw_enable (struct axi_dma_chan*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int axi_chan_start_first_queued (struct axi_dma_chan*) ;
 int chan2dev (struct axi_dma_chan*) ;
 int dev_err (int ,char*,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int vchan_cookie_complete (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_1__*) ;

__attribute__((used)) static void axi_chan_block_xfer_complete(struct axi_dma_chan *chan)
{
 struct virt_dma_desc *vd;
 unsigned long flags;

 spin_lock_irqsave(&chan->vc.lock, flags);
 if (unlikely(axi_chan_is_hw_enable(chan))) {
  dev_err(chan2dev(chan), "BUG: %s caught DWAXIDMAC_IRQ_DMA_TRF, but channel not idle!\n",
   axi_chan_name(chan));
  axi_chan_disable(chan);
 }


 vd = vchan_next_desc(&chan->vc);

 list_del(&vd->node);
 vchan_cookie_complete(vd);


 axi_chan_start_first_queued(chan);

 spin_unlock_irqrestore(&chan->vc.lock, flags);
}
