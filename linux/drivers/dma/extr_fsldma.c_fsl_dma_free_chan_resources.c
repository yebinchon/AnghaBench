
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int * desc_pool; int desc_lock; int ld_completed; int ld_running; int ld_pending; } ;
struct dma_chan {int dummy; } ;


 int chan_dbg (struct fsldma_chan*,char*) ;
 int dma_pool_destroy (int *) ;
 int fsldma_cleanup_descriptors (struct fsldma_chan*) ;
 int fsldma_free_desc_list (struct fsldma_chan*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static void fsl_dma_free_chan_resources(struct dma_chan *dchan)
{
 struct fsldma_chan *chan = to_fsl_chan(dchan);

 chan_dbg(chan, "free all channel resources\n");
 spin_lock_bh(&chan->desc_lock);
 fsldma_cleanup_descriptors(chan);
 fsldma_free_desc_list(chan, &chan->ld_pending);
 fsldma_free_desc_list(chan, &chan->ld_running);
 fsldma_free_desc_list(chan, &chan->ld_completed);
 spin_unlock_bh(&chan->desc_lock);

 dma_pool_destroy(chan->desc_pool);
 chan->desc_pool = ((void*)0);
}
