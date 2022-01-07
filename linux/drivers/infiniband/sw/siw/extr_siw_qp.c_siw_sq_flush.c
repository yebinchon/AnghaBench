
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int flags; } ;
struct siw_wqe {scalar_t__ wr_status; int bytes; struct siw_sqe sqe; } ;
struct TYPE_2__ {int orq_size; int sq_size; } ;
struct siw_qp {size_t orq_get; size_t sq_get; TYPE_1__ attrs; struct siw_sqe* sendq; struct siw_sqe* orq; } ;


 int IB_EVENT_SQ_DRAINED ;
 int READ_ONCE (int ) ;
 scalar_t__ SIW_OP_READ ;
 scalar_t__ SIW_OP_READ_LOCAL_INV ;
 scalar_t__ SIW_OP_READ_RESPONSE ;
 int SIW_WC_WR_FLUSH_ERR ;
 scalar_t__ SIW_WR_IDLE ;
 scalar_t__ SIW_WR_QUEUED ;
 int WRITE_ONCE (int ,int ) ;
 int siw_dbg_qp (struct siw_qp*,char*,scalar_t__,scalar_t__) ;
 int siw_qp_event (struct siw_qp*,int ) ;
 scalar_t__ siw_sqe_complete (struct siw_qp*,struct siw_sqe*,int ,int ) ;
 int siw_wqe_put_mem (struct siw_wqe*,scalar_t__) ;
 scalar_t__ tx_type (struct siw_wqe*) ;
 struct siw_wqe* tx_wqe (struct siw_qp*) ;

void siw_sq_flush(struct siw_qp *qp)
{
 struct siw_sqe *sqe;
 struct siw_wqe *wqe = tx_wqe(qp);
 int async_event = 0;




 while (qp->attrs.orq_size) {
  sqe = &qp->orq[qp->orq_get % qp->attrs.orq_size];
  if (!READ_ONCE(sqe->flags))
   break;

  if (siw_sqe_complete(qp, sqe, 0, SIW_WC_WR_FLUSH_ERR) != 0)
   break;

  WRITE_ONCE(sqe->flags, 0);
  qp->orq_get++;
 }



 if (wqe->wr_status != SIW_WR_IDLE) {
  siw_dbg_qp(qp, "flush current SQE, type %d, status %d\n",
      tx_type(wqe), wqe->wr_status);

  siw_wqe_put_mem(wqe, tx_type(wqe));

  if (tx_type(wqe) != SIW_OP_READ_RESPONSE &&
      ((tx_type(wqe) != SIW_OP_READ &&
        tx_type(wqe) != SIW_OP_READ_LOCAL_INV) ||
       wqe->wr_status == SIW_WR_QUEUED))




   siw_sqe_complete(qp, &wqe->sqe, wqe->bytes,
      SIW_WC_WR_FLUSH_ERR);

  wqe->wr_status = SIW_WR_IDLE;
 }



 while (qp->attrs.sq_size) {
  sqe = &qp->sendq[qp->sq_get % qp->attrs.sq_size];
  if (!READ_ONCE(sqe->flags))
   break;

  async_event = 1;
  if (siw_sqe_complete(qp, sqe, 0, SIW_WC_WR_FLUSH_ERR) != 0)




   break;

  WRITE_ONCE(sqe->flags, 0);
  qp->sq_get++;
 }
 if (async_event)
  siw_qp_event(qp, IB_EVENT_SQ_DRAINED);
}
