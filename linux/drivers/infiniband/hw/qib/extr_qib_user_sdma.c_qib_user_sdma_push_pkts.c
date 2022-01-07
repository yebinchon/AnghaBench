
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int num_pending; TYPE_1__* sdma_rb_node; } ;
struct list_head {int dummy; } ;
struct qib_pportdata {int lflags; int sdma_lock; struct list_head sdma_userpending; } ;
struct TYPE_2__ {int refcount; } ;


 int ECOMM ;
 int QIBL_LINKACTIVE ;
 int __qib_sdma_running (struct qib_pportdata*) ;
 int list_empty (struct list_head*) ;
 int list_splice_tail_init (struct list_head*,struct list_head*) ;
 int qib_sdma_make_progress (struct qib_pportdata*) ;
 int qib_user_sdma_send_desc (struct qib_pportdata*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qib_user_sdma_push_pkts(struct qib_pportdata *ppd,
     struct qib_user_sdma_queue *pq,
     struct list_head *pktlist, int count)
{
 unsigned long flags;

 if (unlikely(!(ppd->lflags & QIBL_LINKACTIVE)))
  return -ECOMM;


 if (pq->sdma_rb_node->refcount > 1) {
  spin_lock_irqsave(&ppd->sdma_lock, flags);
  if (unlikely(!__qib_sdma_running(ppd))) {
   spin_unlock_irqrestore(&ppd->sdma_lock, flags);
   return -ECOMM;
  }
  pq->num_pending += count;
  list_splice_tail_init(pktlist, &ppd->sdma_userpending);
  qib_user_sdma_send_desc(ppd, &ppd->sdma_userpending);
  spin_unlock_irqrestore(&ppd->sdma_lock, flags);
  return 0;
 }
 pq->num_pending += count;






 do {
  spin_lock_irqsave(&ppd->sdma_lock, flags);
  if (unlikely(!__qib_sdma_running(ppd))) {
   spin_unlock_irqrestore(&ppd->sdma_lock, flags);
   return -ECOMM;
  }
  qib_user_sdma_send_desc(ppd, pktlist);
  if (!list_empty(pktlist))
   qib_sdma_make_progress(ppd);
  spin_unlock_irqrestore(&ppd->sdma_lock, flags);
 } while (!list_empty(pktlist));

 return 0;
}
