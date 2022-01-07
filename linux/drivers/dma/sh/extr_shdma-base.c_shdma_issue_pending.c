
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_chan {scalar_t__ pm_state; int chan_lock; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ SHDMA_PM_ESTABLISHED ;
 scalar_t__ SHDMA_PM_PENDING ;
 int shdma_chan_xfer_ld_queue (struct shdma_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct shdma_chan* to_shdma_chan (struct dma_chan*) ;

__attribute__((used)) static void shdma_issue_pending(struct dma_chan *chan)
{
 struct shdma_chan *schan = to_shdma_chan(chan);

 spin_lock_irq(&schan->chan_lock);
 if (schan->pm_state == SHDMA_PM_ESTABLISHED)
  shdma_chan_xfer_ld_queue(schan);
 else
  schan->pm_state = SHDMA_PM_PENDING;
 spin_unlock_irq(&schan->chan_lock);
}
