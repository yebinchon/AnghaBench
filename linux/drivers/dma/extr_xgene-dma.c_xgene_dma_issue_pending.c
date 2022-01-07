
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int lock; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct xgene_dma_chan* to_dma_chan (struct dma_chan*) ;
 int xgene_chan_xfer_ld_pending (struct xgene_dma_chan*) ;

__attribute__((used)) static void xgene_dma_issue_pending(struct dma_chan *dchan)
{
 struct xgene_dma_chan *chan = to_dma_chan(dchan);

 spin_lock_bh(&chan->lock);
 xgene_chan_xfer_ld_pending(chan);
 spin_unlock_bh(&chan->lock);
}
