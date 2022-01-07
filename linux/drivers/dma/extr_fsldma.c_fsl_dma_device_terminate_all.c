
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int idle; int desc_lock; int ld_completed; int ld_running; int ld_pending; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int dma_halt (struct fsldma_chan*) ;
 int fsldma_free_desc_list (struct fsldma_chan*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static int fsl_dma_device_terminate_all(struct dma_chan *dchan)
{
 struct fsldma_chan *chan;

 if (!dchan)
  return -EINVAL;

 chan = to_fsl_chan(dchan);

 spin_lock_bh(&chan->desc_lock);


 dma_halt(chan);


 fsldma_free_desc_list(chan, &chan->ld_pending);
 fsldma_free_desc_list(chan, &chan->ld_running);
 fsldma_free_desc_list(chan, &chan->ld_completed);
 chan->idle = 1;

 spin_unlock_bh(&chan->desc_lock);
 return 0;
}
