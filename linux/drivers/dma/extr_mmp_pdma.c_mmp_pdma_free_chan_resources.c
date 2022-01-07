
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_pdma_chan {int idle; scalar_t__ dev_addr; int * desc_pool; int desc_lock; int chain_running; int chain_pending; } ;
struct dma_chan {int dummy; } ;


 int dma_pool_destroy (int *) ;
 int mmp_pdma_free_desc_list (struct mmp_pdma_chan*,int *) ;
 int mmp_pdma_free_phy (struct mmp_pdma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static void mmp_pdma_free_chan_resources(struct dma_chan *dchan)
{
 struct mmp_pdma_chan *chan = to_mmp_pdma_chan(dchan);
 unsigned long flags;

 spin_lock_irqsave(&chan->desc_lock, flags);
 mmp_pdma_free_desc_list(chan, &chan->chain_pending);
 mmp_pdma_free_desc_list(chan, &chan->chain_running);
 spin_unlock_irqrestore(&chan->desc_lock, flags);

 dma_pool_destroy(chan->desc_pool);
 chan->desc_pool = ((void*)0);
 chan->idle = 1;
 chan->dev_addr = 0;
 mmp_pdma_free_phy(chan);
 return;
}
