
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_qp {int s_flags; int s_lock; } ;


 int hfi1_qp_schedule (struct rvt_qp*) ;
 int rvt_put_qp (struct rvt_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_hfi1_qpwakeup (struct rvt_qp*,int) ;

void hfi1_qp_wakeup(struct rvt_qp *qp, u32 flag)
{
 unsigned long flags;

 spin_lock_irqsave(&qp->s_lock, flags);
 if (qp->s_flags & flag) {
  qp->s_flags &= ~flag;
  trace_hfi1_qpwakeup(qp, flag);
  hfi1_qp_schedule(qp);
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);

 rvt_put_qp(qp);
}
