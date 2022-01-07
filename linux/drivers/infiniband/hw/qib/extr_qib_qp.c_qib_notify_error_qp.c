
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct rvt_qp {int s_flags; int * s_rdma_mr; scalar_t__ s_hdrwords; TYPE_1__ ibqp; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int * s_tx; int iowait; } ;
struct TYPE_4__ {int pending_lock; } ;
struct qib_ibdev {TYPE_2__ rdi; } ;


 int RVT_S_ANY_WAIT_IO ;
 int RVT_S_BUSY ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int qib_put_txreq (int *) ;
 int rvt_put_mr (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibdev* to_idev (int ) ;

void qib_notify_error_qp(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;
 struct qib_ibdev *dev = to_idev(qp->ibqp.device);

 spin_lock(&dev->rdi.pending_lock);
 if (!list_empty(&priv->iowait) && !(qp->s_flags & RVT_S_BUSY)) {
  qp->s_flags &= ~RVT_S_ANY_WAIT_IO;
  list_del_init(&priv->iowait);
 }
 spin_unlock(&dev->rdi.pending_lock);

 if (!(qp->s_flags & RVT_S_BUSY)) {
  qp->s_hdrwords = 0;
  if (qp->s_rdma_mr) {
   rvt_put_mr(qp->s_rdma_mr);
   qp->s_rdma_mr = ((void*)0);
  }
  if (priv->s_tx) {
   qib_put_txreq(priv->s_tx);
   priv->s_tx = ((void*)0);
  }
 }
}
