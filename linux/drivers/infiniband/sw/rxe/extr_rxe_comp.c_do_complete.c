
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int send_flags; scalar_t__ opcode; } ;
struct rxe_send_wqe {scalar_t__ status; TYPE_3__ wr; } ;
struct TYPE_8__ {int task; scalar_t__ wait_fence; } ;
struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {int device; } ;
struct rxe_qp {scalar_t__ sq_sig_type; TYPE_4__ req; TYPE_2__ sq; int scq; TYPE_1__ ibqp; } ;
struct rxe_dev {int dummy; } ;
struct rxe_cqe {int dummy; } ;


 int IB_SEND_SIGNALED ;
 scalar_t__ IB_SIGNAL_ALL_WR ;
 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WR_SEND ;
 scalar_t__ IB_WR_SEND_WITH_IMM ;
 scalar_t__ IB_WR_SEND_WITH_INV ;
 int RXE_CNT_RDMA_SEND ;
 int advance_consumer (int ) ;
 int make_send_cqe (struct rxe_qp*,struct rxe_send_wqe*,struct rxe_cqe*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_cq_post (int ,struct rxe_cqe*,int ) ;
 int rxe_run_task (int *,int) ;
 struct rxe_dev* to_rdev (int ) ;

__attribute__((used)) static void do_complete(struct rxe_qp *qp, struct rxe_send_wqe *wqe)
{
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);
 struct rxe_cqe cqe;

 if ((qp->sq_sig_type == IB_SIGNAL_ALL_WR) ||
     (wqe->wr.send_flags & IB_SEND_SIGNALED) ||
     wqe->status != IB_WC_SUCCESS) {
  make_send_cqe(qp, wqe, &cqe);
  advance_consumer(qp->sq.queue);
  rxe_cq_post(qp->scq, &cqe, 0);
 } else {
  advance_consumer(qp->sq.queue);
 }

 if (wqe->wr.opcode == IB_WR_SEND ||
     wqe->wr.opcode == IB_WR_SEND_WITH_IMM ||
     wqe->wr.opcode == IB_WR_SEND_WITH_INV)
  rxe_counter_inc(rxe, RXE_CNT_RDMA_SEND);





 if (qp->req.wait_fence) {
  qp->req.wait_fence = 0;
  rxe_run_task(&qp->req.task, 1);
 }
}
