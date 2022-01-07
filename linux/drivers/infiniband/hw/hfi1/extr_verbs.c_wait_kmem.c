
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rvt_qp {size_t state; int s_lock; } ;
struct hfi1_pkt_state {TYPE_3__* wait; TYPE_2__* s_txreq; } ;
struct hfi1_ibdev {int iowait_lock; } ;
struct TYPE_6__ {int tx_head; } ;
struct TYPE_4__ {int list; } ;
struct TYPE_5__ {TYPE_1__ txreq; } ;


 int EBUSY ;
 int RVT_PROCESS_RECV_OK ;
 int hfi1_qp_unbusy (struct rvt_qp*,TYPE_3__*) ;
 int hfi1_wait_kmem (struct rvt_qp*) ;
 int* ib_rvt_state_ops ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static int wait_kmem(struct hfi1_ibdev *dev,
       struct rvt_qp *qp,
       struct hfi1_pkt_state *ps)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&qp->s_lock, flags);
 if (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) {
  write_seqlock(&dev->iowait_lock);
  list_add_tail(&ps->s_txreq->txreq.list,
         &ps->wait->tx_head);
  hfi1_wait_kmem(qp);
  write_sequnlock(&dev->iowait_lock);
  hfi1_qp_unbusy(qp, ps->wait);
  ret = -EBUSY;
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);

 return ret;
}
