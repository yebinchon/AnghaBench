
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_dma_chan {int mode; int lock; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; int src_maxburst; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 struct sirfsoc_dma_chan* dma_chan_to_sirfsoc_dma_chan (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_dma_slave_config(struct dma_chan *chan,
        struct dma_slave_config *config)
{
 struct sirfsoc_dma_chan *schan = dma_chan_to_sirfsoc_dma_chan(chan);
 unsigned long flags;

 if ((config->src_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES) ||
  (config->dst_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES))
  return -EINVAL;

 spin_lock_irqsave(&schan->lock, flags);
 schan->mode = (config->src_maxburst == 4 ? 1 : 0);
 spin_unlock_irqrestore(&schan->lock, flags);

 return 0;
}
