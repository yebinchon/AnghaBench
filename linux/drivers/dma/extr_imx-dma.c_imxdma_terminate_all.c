
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {int lock; } ;
struct imxdma_channel {int ld_free; int ld_queue; int ld_active; struct imxdma_engine* imxdma; } ;
struct dma_chan {int dummy; } ;


 int imxdma_disable_hw (struct imxdma_channel*) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct imxdma_channel* to_imxdma_chan (struct dma_chan*) ;

__attribute__((used)) static int imxdma_terminate_all(struct dma_chan *chan)
{
 struct imxdma_channel *imxdmac = to_imxdma_chan(chan);
 struct imxdma_engine *imxdma = imxdmac->imxdma;
 unsigned long flags;

 imxdma_disable_hw(imxdmac);

 spin_lock_irqsave(&imxdma->lock, flags);
 list_splice_tail_init(&imxdmac->ld_active, &imxdmac->ld_free);
 list_splice_tail_init(&imxdmac->ld_queue, &imxdmac->ld_free);
 spin_unlock_irqrestore(&imxdma->lock, flags);
 return 0;
}
