
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; int psn; } ;
struct TYPE_9__ {int max_sge; int max_wr; } ;
struct TYPE_7__ {int max_inline; int max_sge; int max_wr; } ;
struct TYPE_6__ {int psn; } ;
struct TYPE_8__ {int max_recv_sge; int max_recv_wr; int max_inline_data; int max_send_sge; int max_send_wr; } ;
struct ib_qp_attr {int sq_draining; int alt_ah_attr; int ah_attr; TYPE_3__ cap; int sq_psn; int rq_psn; } ;
struct rxe_qp {TYPE_5__ req; int alt_av; int pri_av; TYPE_4__ rq; int srq; TYPE_2__ sq; TYPE_1__ resp; struct ib_qp_attr attr; } ;


 scalar_t__ QP_STATE_DRAIN ;
 int cond_resched () ;
 int pr_debug (char*,int) ;
 int rxe_av_to_attr (int *,int *) ;

int rxe_qp_to_attr(struct rxe_qp *qp, struct ib_qp_attr *attr, int mask)
{
 *attr = qp->attr;

 attr->rq_psn = qp->resp.psn;
 attr->sq_psn = qp->req.psn;

 attr->cap.max_send_wr = qp->sq.max_wr;
 attr->cap.max_send_sge = qp->sq.max_sge;
 attr->cap.max_inline_data = qp->sq.max_inline;

 if (!qp->srq) {
  attr->cap.max_recv_wr = qp->rq.max_wr;
  attr->cap.max_recv_sge = qp->rq.max_sge;
 }

 rxe_av_to_attr(&qp->pri_av, &attr->ah_attr);
 rxe_av_to_attr(&qp->alt_av, &attr->alt_ah_attr);

 if (qp->req.state == QP_STATE_DRAIN) {
  attr->sq_draining = 1;




  cond_resched();
 } else {
  attr->sq_draining = 0;
 }

 pr_debug("attr->sq_draining = %d\n", attr->sq_draining);

 return 0;
}
