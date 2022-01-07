
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int desc_lock; } ;
struct dma_chan {int dummy; } ;


 int fsl_chan_xfer_ld_queue (struct fsldma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static void fsl_dma_memcpy_issue_pending(struct dma_chan *dchan)
{
 struct fsldma_chan *chan = to_fsl_chan(dchan);

 spin_lock_bh(&chan->desc_lock);
 fsl_chan_xfer_ld_queue(chan);
 spin_unlock_bh(&chan->desc_lock);
}
