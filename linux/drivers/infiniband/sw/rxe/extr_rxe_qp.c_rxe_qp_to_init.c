
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int qp_type; int srq; int recv_cq; int send_cq; int qp_context; int event_handler; } ;
struct TYPE_7__ {int max_sge; int max_wr; } ;
struct TYPE_5__ {int max_inline; int max_sge; int max_wr; } ;
struct rxe_qp {TYPE_4__ ibqp; int sq_sig_type; TYPE_3__ rq; int srq; TYPE_1__ sq; } ;
struct TYPE_6__ {int max_recv_sge; int max_recv_wr; int max_inline_data; int max_send_sge; int max_send_wr; } ;
struct ib_qp_init_attr {int port_num; int qp_type; int sq_sig_type; TYPE_2__ cap; int srq; int recv_cq; int send_cq; int qp_context; int event_handler; } ;



int rxe_qp_to_init(struct rxe_qp *qp, struct ib_qp_init_attr *init)
{
 init->event_handler = qp->ibqp.event_handler;
 init->qp_context = qp->ibqp.qp_context;
 init->send_cq = qp->ibqp.send_cq;
 init->recv_cq = qp->ibqp.recv_cq;
 init->srq = qp->ibqp.srq;

 init->cap.max_send_wr = qp->sq.max_wr;
 init->cap.max_send_sge = qp->sq.max_sge;
 init->cap.max_inline_data = qp->sq.max_inline;

 if (!qp->srq) {
  init->cap.max_recv_wr = qp->rq.max_wr;
  init->cap.max_recv_sge = qp->rq.max_sge;
 }

 init->sq_sig_type = qp->sq_sig_type;

 init->qp_type = qp->ibqp.qp_type;
 init->port_num = 1;

 return 0;
}
