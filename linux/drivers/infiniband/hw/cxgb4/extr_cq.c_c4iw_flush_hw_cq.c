
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct t4_cqe {int header; } ;
struct t4_swsqe {int complete; struct t4_cqe cqe; } ;
struct TYPE_11__ {struct t4_swsqe* sw_sq; TYPE_1__* oldest_read; } ;
struct TYPE_13__ {int flushed; TYPE_2__ sq; } ;
struct c4iw_qp {int lock; TYPE_6__ wq; } ;
struct TYPE_12__ {size_t sw_pidx; struct t4_cqe* sw_queue; int cqid; } ;
struct c4iw_cq {TYPE_3__ cq; int rhp; } ;
struct TYPE_10__ {int signaled; } ;


 scalar_t__ CQE_OPCODE (struct t4_cqe*) ;
 int CQE_QPID (struct t4_cqe*) ;
 int CQE_SWCQE_V (int) ;
 int CQE_TYPE (struct t4_cqe*) ;
 size_t CQE_WRID_SQ_IDX (struct t4_cqe*) ;
 int CQE_WRID_STAG (struct t4_cqe*) ;
 scalar_t__ FW_RI_READ_RESP ;
 scalar_t__ FW_RI_TERMINATE ;
 scalar_t__ SQ_TYPE (struct t4_cqe*) ;
 int advance_oldest_read (TYPE_6__*) ;
 int cpu_to_be32 (int ) ;
 int create_read_req_cqe (TYPE_6__*,struct t4_cqe*,struct t4_cqe*) ;
 int flush_completed_wrs (TYPE_6__*,TYPE_3__*) ;
 struct c4iw_qp* get_qhp (int ,int ) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_hwcq_consume (TYPE_3__*) ;
 int t4_next_hw_cqe (TYPE_3__*,struct t4_cqe**) ;
 int t4_swcq_produce (TYPE_3__*) ;

void c4iw_flush_hw_cq(struct c4iw_cq *chp, struct c4iw_qp *flush_qhp)
{
 struct t4_cqe *hw_cqe, *swcqe, read_cqe;
 struct c4iw_qp *qhp;
 struct t4_swsqe *swsqe;
 int ret;

 pr_debug("cqid 0x%x\n", chp->cq.cqid);
 ret = t4_next_hw_cqe(&chp->cq, &hw_cqe);






 while (!ret) {
  qhp = get_qhp(chp->rhp, CQE_QPID(hw_cqe));




  if (qhp == ((void*)0))
   goto next_cqe;

  if (flush_qhp != qhp) {
   spin_lock(&qhp->lock);

   if (qhp->wq.flushed == 1)
    goto next_cqe;
  }

  if (CQE_OPCODE(hw_cqe) == FW_RI_TERMINATE)
   goto next_cqe;

  if (CQE_OPCODE(hw_cqe) == FW_RI_READ_RESP) {





   if (CQE_TYPE(hw_cqe) == 1)
    goto next_cqe;



   if (CQE_WRID_STAG(hw_cqe) == 1)
    goto next_cqe;




   if (!qhp->wq.sq.oldest_read->signaled) {
    advance_oldest_read(&qhp->wq);
    goto next_cqe;
   }





   create_read_req_cqe(&qhp->wq, hw_cqe, &read_cqe);
   hw_cqe = &read_cqe;
   advance_oldest_read(&qhp->wq);
  }




  if (SQ_TYPE(hw_cqe)) {
   swsqe = &qhp->wq.sq.sw_sq[CQE_WRID_SQ_IDX(hw_cqe)];
   swsqe->cqe = *hw_cqe;
   swsqe->complete = 1;
   flush_completed_wrs(&qhp->wq, &chp->cq);
  } else {
   swcqe = &chp->cq.sw_queue[chp->cq.sw_pidx];
   *swcqe = *hw_cqe;
   swcqe->header |= cpu_to_be32(CQE_SWCQE_V(1));
   t4_swcq_produce(&chp->cq);
  }
next_cqe:
  t4_hwcq_consume(&chp->cq);
  ret = t4_next_hw_cqe(&chp->cq, &hw_cqe);
  if (qhp && flush_qhp != qhp)
   spin_unlock(&qhp->lock);
 }
}
