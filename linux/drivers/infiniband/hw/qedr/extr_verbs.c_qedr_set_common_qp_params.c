
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int max_sges; } ;
struct TYPE_7__ {int max_sges; } ;
struct qedr_qp {int signaled; TYPE_5__* sq_cq; TYPE_4__ sq; int state; int max_inline_data; int qp_type; TYPE_3__* rq_cq; TYPE_2__ rq; int srq; struct qedr_dev* dev; struct qedr_pd* pd; int refcnt; int q_lock; } ;
struct qedr_pd {int pd_id; } ;
struct qedr_dev {int dummy; } ;
struct TYPE_6__ {int max_recv_sge; int max_send_sge; int max_inline_data; } ;
struct ib_qp_init_attr {scalar_t__ sq_sig_type; scalar_t__ srq; TYPE_1__ cap; int recv_cq; int send_cq; int qp_type; } ;
struct TYPE_10__ {int icid; } ;
struct TYPE_8__ {int icid; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int ,int ,...) ;
 scalar_t__ IB_SIGNAL_ALL_WR ;
 int QEDR_MSG_QP ;
 int QED_ROCE_QP_STATE_RESET ;
 int atomic_set (int *,int) ;
 void* get_qedr_cq (int ) ;
 int get_qedr_srq (scalar_t__) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void qedr_set_common_qp_params(struct qedr_dev *dev,
          struct qedr_qp *qp,
          struct qedr_pd *pd,
          struct ib_qp_init_attr *attrs)
{
 spin_lock_init(&qp->q_lock);
 atomic_set(&qp->refcnt, 1);
 qp->pd = pd;
 qp->qp_type = attrs->qp_type;
 qp->max_inline_data = attrs->cap.max_inline_data;
 qp->sq.max_sges = attrs->cap.max_send_sge;
 qp->state = QED_ROCE_QP_STATE_RESET;
 qp->signaled = (attrs->sq_sig_type == IB_SIGNAL_ALL_WR) ? 1 : 0;
 qp->sq_cq = get_qedr_cq(attrs->send_cq);
 qp->dev = dev;

 if (attrs->srq) {
  qp->srq = get_qedr_srq(attrs->srq);
 } else {
  qp->rq_cq = get_qedr_cq(attrs->recv_cq);
  qp->rq.max_sges = attrs->cap.max_recv_sge;
  DP_DEBUG(dev, QEDR_MSG_QP,
    "RQ params:\trq_max_sges = %d, rq_cq_id = %d\n",
    qp->rq.max_sges, qp->rq_cq->icid);
 }

 DP_DEBUG(dev, QEDR_MSG_QP,
   "QP params:\tpd = %d, qp_type = %d, max_inline_data = %d, state = %d, signaled = %d, use_srq=%d\n",
   pd->pd_id, qp->qp_type, qp->max_inline_data,
   qp->state, qp->signaled, (attrs->srq) ? 1 : 0);
 DP_DEBUG(dev, QEDR_MSG_QP,
   "SQ params:\tsq_max_sges = %d, sq_cq_id = %d\n",
   qp->sq.max_sges, qp->sq_cq->icid);
}
