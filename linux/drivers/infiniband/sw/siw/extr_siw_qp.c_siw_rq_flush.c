
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct siw_rqe {int flags; } ;
struct siw_wqe {scalar_t__ wr_status; int sqe; int bytes; struct siw_rqe rqe; } ;
struct TYPE_6__ {int rq_size; } ;
struct TYPE_5__ {struct siw_wqe wqe_active; } ;
struct TYPE_4__ {struct siw_wqe wqe_active; } ;
struct siw_qp {size_t rq_get; TYPE_3__ attrs; struct siw_rqe* recvq; TYPE_2__ rx_tagged; TYPE_1__ rx_untagged; } ;


 int READ_ONCE (int ) ;
 scalar_t__ SIW_OP_READ ;
 scalar_t__ SIW_OP_READ_RESPONSE ;
 scalar_t__ SIW_OP_RECEIVE ;
 scalar_t__ SIW_OP_WRITE ;
 int SIW_WC_WR_FLUSH_ERR ;
 scalar_t__ SIW_WR_IDLE ;
 int WRITE_ONCE (int ,int ) ;
 scalar_t__ rx_type (struct siw_wqe*) ;
 int siw_dbg_qp (struct siw_qp*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ siw_rqe_complete (struct siw_qp*,struct siw_rqe*,int ,int ,int ) ;
 int siw_sqe_complete (struct siw_qp*,int *,int ,int ) ;
 int siw_wqe_put_mem (struct siw_wqe*,scalar_t__) ;

void siw_rq_flush(struct siw_qp *qp)
{
 struct siw_wqe *wqe = &qp->rx_untagged.wqe_active;




 if (wqe->wr_status != SIW_WR_IDLE) {
  siw_dbg_qp(qp, "flush current rqe, type %d, status %d\n",
      rx_type(wqe), wqe->wr_status);

  siw_wqe_put_mem(wqe, rx_type(wqe));

  if (rx_type(wqe) == SIW_OP_RECEIVE) {
   siw_rqe_complete(qp, &wqe->rqe, wqe->bytes,
      0, SIW_WC_WR_FLUSH_ERR);
  } else if (rx_type(wqe) != SIW_OP_READ &&
      rx_type(wqe) != SIW_OP_READ_RESPONSE &&
      rx_type(wqe) != SIW_OP_WRITE) {
   siw_sqe_complete(qp, &wqe->sqe, 0, SIW_WC_WR_FLUSH_ERR);
  }
  wqe->wr_status = SIW_WR_IDLE;
 }
 wqe = &qp->rx_tagged.wqe_active;

 if (wqe->wr_status != SIW_WR_IDLE) {
  siw_wqe_put_mem(wqe, rx_type(wqe));
  wqe->wr_status = SIW_WR_IDLE;
 }



 while (qp->attrs.rq_size) {
  struct siw_rqe *rqe =
   &qp->recvq[qp->rq_get % qp->attrs.rq_size];

  if (!READ_ONCE(rqe->flags))
   break;

  if (siw_rqe_complete(qp, rqe, 0, 0, SIW_WC_WR_FLUSH_ERR) != 0)
   break;

  WRITE_ONCE(rqe->flags, 0);
  qp->rq_get++;
 }
}
