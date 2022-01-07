
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state; } ;
struct qib_pportdata {int sdma_lock; TYPE_1__ sdma_state; } ;
typedef enum qib_sdma_events { ____Placeholder_qib_sdma_events } qib_sdma_events ;


 int __qib_sdma_process_event (struct qib_pportdata*,int) ;
 int qib_sdma_descq_freecnt (struct qib_pportdata*) ;
 scalar_t__ qib_sdma_state_s99_running ;
 int qib_verbs_sdma_desc_avail (struct qib_pportdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qib_sdma_process_event(struct qib_pportdata *ppd,
 enum qib_sdma_events event)
{
 unsigned long flags;

 spin_lock_irqsave(&ppd->sdma_lock, flags);

 __qib_sdma_process_event(ppd, event);

 if (ppd->sdma_state.current_state == qib_sdma_state_s99_running)
  qib_verbs_sdma_desc_avail(ppd, qib_sdma_descq_freecnt(ppd));

 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}
