
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wc ;
typedef scalar_t__ u32 ;
struct rvt_rwqe {int num_sge; TYPE_2__* sg_list; int wr_id; } ;
struct TYPE_8__ {unsigned int max_sge; scalar_t__ size; struct rvt_krwq* kwq; } ;
struct TYPE_5__ {int recv_cq; int srq; } ;
struct rvt_qp {size_t state; TYPE_4__ r_rq; TYPE_1__ ibqp; } ;
struct rvt_krwq {scalar_t__ head; int p_lock; int tail; } ;
struct ib_wc {int status; int wr_id; int opcode; TYPE_1__* qp; } ;
struct ib_recv_wr {int num_sge; TYPE_3__* sg_list; int wr_id; struct ib_recv_wr* next; } ;
struct ib_qp {int dummy; } ;
struct TYPE_7__ {int lkey; int length; int addr; } ;
struct TYPE_6__ {int lkey; int length; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int IB_WC_RECV ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ READ_ONCE (int ) ;
 int RVT_FLUSH_RECV ;
 int RVT_POST_RECV_OK ;
 int* ib_rvt_state_ops ;
 int ibcq_to_rvtcq (int ) ;
 struct rvt_qp* ibqp_to_rvtqp (struct ib_qp*) ;
 int memset (struct ib_wc*,int ,int) ;
 int rvt_cq_enter (int ,struct ib_wc*,int) ;
 struct rvt_rwqe* rvt_get_rwqe_ptr (TYPE_4__*,scalar_t__) ;
 int smp_store_release (scalar_t__*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int rvt_post_recv(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
    const struct ib_recv_wr **bad_wr)
{
 struct rvt_qp *qp = ibqp_to_rvtqp(ibqp);
 struct rvt_krwq *wq = qp->r_rq.kwq;
 unsigned long flags;
 int qp_err_flush = (ib_rvt_state_ops[qp->state] & RVT_FLUSH_RECV) &&
    !qp->ibqp.srq;


 if (!(ib_rvt_state_ops[qp->state] & RVT_POST_RECV_OK) || !wq) {
  *bad_wr = wr;
  return -EINVAL;
 }

 for (; wr; wr = wr->next) {
  struct rvt_rwqe *wqe;
  u32 next;
  int i;

  if ((unsigned)wr->num_sge > qp->r_rq.max_sge) {
   *bad_wr = wr;
   return -EINVAL;
  }

  spin_lock_irqsave(&qp->r_rq.kwq->p_lock, flags);
  next = wq->head + 1;
  if (next >= qp->r_rq.size)
   next = 0;
  if (next == READ_ONCE(wq->tail)) {
   spin_unlock_irqrestore(&qp->r_rq.kwq->p_lock, flags);
   *bad_wr = wr;
   return -ENOMEM;
  }
  if (unlikely(qp_err_flush)) {
   struct ib_wc wc;

   memset(&wc, 0, sizeof(wc));
   wc.qp = &qp->ibqp;
   wc.opcode = IB_WC_RECV;
   wc.wr_id = wr->wr_id;
   wc.status = IB_WC_WR_FLUSH_ERR;
   rvt_cq_enter(ibcq_to_rvtcq(qp->ibqp.recv_cq), &wc, 1);
  } else {
   wqe = rvt_get_rwqe_ptr(&qp->r_rq, wq->head);
   wqe->wr_id = wr->wr_id;
   wqe->num_sge = wr->num_sge;
   for (i = 0; i < wr->num_sge; i++) {
    wqe->sg_list[i].addr = wr->sg_list[i].addr;
    wqe->sg_list[i].length = wr->sg_list[i].length;
    wqe->sg_list[i].lkey = wr->sg_list[i].lkey;
   }




   smp_store_release(&wq->head, next);
  }
  spin_unlock_irqrestore(&qp->r_rq.kwq->p_lock, flags);
 }
 return 0;
}
