
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cq {int dummy; } ;
struct c4iw_cq {int lock; int cq; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;


 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t4_arm_cq (int *,int) ;
 int t4_cq_notempty (int *) ;
 struct c4iw_cq* to_c4iw_cq (struct ib_cq*) ;

int c4iw_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
 struct c4iw_cq *chp;
 int ret = 0;
 unsigned long flag;

 chp = to_c4iw_cq(ibcq);
 spin_lock_irqsave(&chp->lock, flag);
 t4_arm_cq(&chp->cq,
    (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED);
 if (flags & IB_CQ_REPORT_MISSED_EVENTS)
  ret = t4_cq_notempty(&chp->cq);
 spin_unlock_irqrestore(&chp->lock, flag);
 return ret;
}
