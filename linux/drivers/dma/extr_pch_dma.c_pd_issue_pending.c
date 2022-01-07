
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_chan {int lock; } ;
struct dma_chan {int dummy; } ;


 int pdc_advance_work (struct pch_dma_chan*) ;
 scalar_t__ pdc_is_idle (struct pch_dma_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pch_dma_chan* to_pd_chan (struct dma_chan*) ;

__attribute__((used)) static void pd_issue_pending(struct dma_chan *chan)
{
 struct pch_dma_chan *pd_chan = to_pd_chan(chan);

 if (pdc_is_idle(pd_chan)) {
  spin_lock(&pd_chan->lock);
  pdc_advance_work(pd_chan);
  spin_unlock(&pd_chan->lock);
 }
}
