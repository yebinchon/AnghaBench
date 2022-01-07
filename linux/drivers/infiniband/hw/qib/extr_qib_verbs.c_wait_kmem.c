
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {size_t state; int s_lock; int s_flags; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int iowait; } ;
struct TYPE_2__ {int pending_lock; } ;
struct qib_ibdev {TYPE_1__ rdi; int memwait; int mem_timer; } ;


 int EBUSY ;
 int RVT_PROCESS_RECV_OK ;
 int RVT_S_BUSY ;
 int RVT_S_WAIT_KMEM ;
 int* ib_rvt_state_ops ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wait_kmem(struct qib_ibdev *dev, struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&qp->s_lock, flags);
 if (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) {
  spin_lock(&dev->rdi.pending_lock);
  if (list_empty(&priv->iowait)) {
   if (list_empty(&dev->memwait))
    mod_timer(&dev->mem_timer, jiffies + 1);
   qp->s_flags |= RVT_S_WAIT_KMEM;
   list_add_tail(&priv->iowait, &dev->memwait);
  }
  spin_unlock(&dev->rdi.pending_lock);
  qp->s_flags &= ~RVT_S_BUSY;
  ret = -EBUSY;
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);

 return ret;
}
