
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; int s_lock; } ;
struct iowait {int dummy; } ;


 int RVT_S_WAIT_DMA ;
 int hfi1_schedule_send (struct rvt_qp*) ;
 struct rvt_qp* iowait_to_qp (struct iowait*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iowait_sdma_drained(struct iowait *wait)
{
 struct rvt_qp *qp = iowait_to_qp(wait);
 unsigned long flags;







 spin_lock_irqsave(&qp->s_lock, flags);
 if (qp->s_flags & RVT_S_WAIT_DMA) {
  qp->s_flags &= ~RVT_S_WAIT_DMA;
  hfi1_schedule_send(qp);
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);
}
