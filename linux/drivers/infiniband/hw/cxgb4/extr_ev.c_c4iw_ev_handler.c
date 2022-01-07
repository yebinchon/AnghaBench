
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct c4iw_dev {int cqs; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct c4iw_cq {int wait; int refcnt; int comp_handler_lock; TYPE_1__ ibcq; int cq; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;
 int t4_clear_cq_armed (int *) ;
 int wake_up (int *) ;
 struct c4iw_cq* xa_load (int *,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

int c4iw_ev_handler(struct c4iw_dev *dev, u32 qid)
{
 struct c4iw_cq *chp;
 unsigned long flag;

 xa_lock_irqsave(&dev->cqs, flag);
 chp = xa_load(&dev->cqs, qid);
 if (chp) {
  atomic_inc(&chp->refcnt);
  xa_unlock_irqrestore(&dev->cqs, flag);
  t4_clear_cq_armed(&chp->cq);
  spin_lock_irqsave(&chp->comp_handler_lock, flag);
  (*chp->ibcq.comp_handler)(&chp->ibcq, chp->ibcq.cq_context);
  spin_unlock_irqrestore(&chp->comp_handler_lock, flag);
  if (atomic_dec_and_test(&chp->refcnt))
   wake_up(&chp->wait);
 } else {
  pr_debug("unknown cqid 0x%x\n", qid);
  xa_unlock_irqrestore(&dev->cqs, flag);
 }
 return 0;
}
