
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_pdma_chan {int idle; int desc_lock; int chain_running; int chain_pending; int phy; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int disable_chan (int ) ;
 int mmp_pdma_free_desc_list (struct mmp_pdma_chan*,int *) ;
 int mmp_pdma_free_phy (struct mmp_pdma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mmp_pdma_terminate_all(struct dma_chan *dchan)
{
 struct mmp_pdma_chan *chan = to_mmp_pdma_chan(dchan);
 unsigned long flags;

 if (!dchan)
  return -EINVAL;

 disable_chan(chan->phy);
 mmp_pdma_free_phy(chan);
 spin_lock_irqsave(&chan->desc_lock, flags);
 mmp_pdma_free_desc_list(chan, &chan->chain_pending);
 mmp_pdma_free_desc_list(chan, &chan->chain_running);
 spin_unlock_irqrestore(&chan->desc_lock, flags);
 chan->idle = 1;

 return 0;
}
