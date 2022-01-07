
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct rvt_qp {TYPE_1__ ibqp; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int iowait; } ;
struct TYPE_4__ {int pending_lock; } ;
struct qib_ibdev {TYPE_2__ rdi; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibdev* to_idev (int ) ;

void qib_flush_qp_waiters(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;
 struct qib_ibdev *dev = to_idev(qp->ibqp.device);

 spin_lock(&dev->rdi.pending_lock);
 if (!list_empty(&priv->iowait))
  list_del_init(&priv->iowait);
 spin_unlock(&dev->rdi.pending_lock);
}
