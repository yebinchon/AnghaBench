
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state; } ;
struct sdma_engine {int tail_lock; int head_lock; TYPE_1__ state; } ;
typedef enum sdma_events { ____Placeholder_sdma_events } sdma_events ;


 int __sdma_process_event (struct sdma_engine*,int) ;
 int sdma_desc_avail (struct sdma_engine*,int ) ;
 int sdma_descq_freecnt (struct sdma_engine*) ;
 scalar_t__ sdma_state_s99_running ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void sdma_process_event(struct sdma_engine *sde, enum sdma_events event)
{
 unsigned long flags;

 spin_lock_irqsave(&sde->tail_lock, flags);
 write_seqlock(&sde->head_lock);

 __sdma_process_event(sde, event);

 if (sde->state.current_state == sdma_state_s99_running)
  sdma_desc_avail(sde, sdma_descq_freecnt(sde));

 write_sequnlock(&sde->head_lock);
 spin_unlock_irqrestore(&sde->tail_lock, flags);
}
