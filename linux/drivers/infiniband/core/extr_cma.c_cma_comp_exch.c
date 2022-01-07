
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int state; int lock; } ;
typedef enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cma_comp_exch(struct rdma_id_private *id_priv,
    enum rdma_cm_state comp, enum rdma_cm_state exch)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&id_priv->lock, flags);
 if ((ret = (id_priv->state == comp)))
  id_priv->state = exch;
 spin_unlock_irqrestore(&id_priv->lock, flags);
 return ret;
}
