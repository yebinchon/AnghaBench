
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_chan {int lock; int err_status; int chan; } ;


 int chan2dev (int *) ;
 int dev_err (int ,char*) ;
 int pdc_advance_work (struct pch_dma_chan*) ;
 int pdc_handle_error (struct pch_dma_chan*) ;
 int pdc_is_idle (struct pch_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pdc_tasklet(unsigned long data)
{
 struct pch_dma_chan *pd_chan = (struct pch_dma_chan *)data;
 unsigned long flags;

 if (!pdc_is_idle(pd_chan)) {
  dev_err(chan2dev(&pd_chan->chan),
   "BUG: handle non-idle channel in tasklet\n");
  return;
 }

 spin_lock_irqsave(&pd_chan->lock, flags);
 if (test_and_clear_bit(0, &pd_chan->err_status))
  pdc_handle_error(pd_chan);
 else
  pdc_advance_work(pd_chan);
 spin_unlock_irqrestore(&pd_chan->lock, flags);
}
