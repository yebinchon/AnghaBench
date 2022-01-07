
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int tail_lock; int head_lock; scalar_t__* head_dma; int desc_avail; scalar_t__ descq_head; scalar_t__ descq_tail; } ;


 int __sdma_process_event (struct sdma_engine*,int ) ;
 int sdma_descq_freecnt (struct sdma_engine*) ;
 int sdma_event_e40_sw_cleaned ;
 int sdma_flush (struct sdma_engine*) ;
 int sdma_make_progress (struct sdma_engine*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void sdma_sw_clean_up_task(unsigned long opaque)
{
 struct sdma_engine *sde = (struct sdma_engine *)opaque;
 unsigned long flags;

 spin_lock_irqsave(&sde->tail_lock, flags);
 write_seqlock(&sde->head_lock);
 sdma_make_progress(sde, 0);

 sdma_flush(sde);






 sde->descq_tail = 0;
 sde->descq_head = 0;
 sde->desc_avail = sdma_descq_freecnt(sde);
 *sde->head_dma = 0;

 __sdma_process_event(sde, sdma_event_e40_sw_cleaned);

 write_sequnlock(&sde->head_lock);
 spin_unlock_irqrestore(&sde->tail_lock, flags);
}
