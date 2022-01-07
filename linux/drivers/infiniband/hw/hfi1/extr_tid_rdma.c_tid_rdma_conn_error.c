
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tid_rdma_params {int dummy; } ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_4__ {int remote; } ;
struct TYPE_3__ {int lock; } ;
struct hfi1_qp_priv {TYPE_2__ tid_rdma; TYPE_1__ opfn; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct tid_rdma_params*,int ) ;
 int lockdep_is_held (int *) ;
 struct tid_rdma_params* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;

void tid_rdma_conn_error(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct tid_rdma_params *old;

 old = rcu_dereference_protected(priv->tid_rdma.remote,
     lockdep_is_held(&priv->opfn.lock));
 RCU_INIT_POINTER(priv->tid_rdma.remote, ((void*)0));
 if (old)
  kfree_rcu(old, rcu_head);
}
