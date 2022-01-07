
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct rvt_qp {size_t state; int s_lock; int s_flags; TYPE_1__ ibqp; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int iowait; } ;
struct TYPE_4__ {int pending_lock; } ;
struct qib_ibdev {TYPE_2__ rdi; int piowait; int n_piowait; } ;
struct qib_devdata {int (* f_wantpiobuf_intr ) (struct qib_devdata*,int) ;} ;


 int EBUSY ;
 int RVT_PROCESS_RECV_OK ;
 int RVT_S_BUSY ;
 int RVT_S_WAIT_PIO ;
 struct qib_devdata* dd_from_dev (struct qib_ibdev*) ;
 int* ib_rvt_state_ops ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_devdata*,int) ;
 struct qib_ibdev* to_idev (int ) ;

__attribute__((used)) static int no_bufs_available(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;
 struct qib_ibdev *dev = to_idev(qp->ibqp.device);
 struct qib_devdata *dd;
 unsigned long flags;
 int ret = 0;







 spin_lock_irqsave(&qp->s_lock, flags);
 if (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) {
  spin_lock(&dev->rdi.pending_lock);
  if (list_empty(&priv->iowait)) {
   dev->n_piowait++;
   qp->s_flags |= RVT_S_WAIT_PIO;
   list_add_tail(&priv->iowait, &dev->piowait);
   dd = dd_from_dev(dev);
   dd->f_wantpiobuf_intr(dd, 1);
  }
  spin_unlock(&dev->rdi.pending_lock);
  qp->s_flags &= ~RVT_S_BUSY;
  ret = -EBUSY;
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);
 return ret;
}
