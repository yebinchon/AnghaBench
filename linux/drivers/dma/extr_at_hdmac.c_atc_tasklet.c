
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma_chan {int lock; int status; } ;


 int ATC_IS_ERROR ;
 int atc_advance_work (struct at_dma_chan*) ;
 scalar_t__ atc_chan_is_cyclic (struct at_dma_chan*) ;
 int atc_handle_cyclic (struct at_dma_chan*) ;
 int atc_handle_error (struct at_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void atc_tasklet(unsigned long data)
{
 struct at_dma_chan *atchan = (struct at_dma_chan *)data;
 unsigned long flags;

 spin_lock_irqsave(&atchan->lock, flags);
 if (test_and_clear_bit(ATC_IS_ERROR, &atchan->status))
  atc_handle_error(atchan);
 else if (atc_chan_is_cyclic(atchan))
  atc_handle_cyclic(atchan);
 else
  atc_advance_work(atchan);

 spin_unlock_irqrestore(&atchan->lock, flags);
}
