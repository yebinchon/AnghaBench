
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct tid_rdma_params {unsigned long timeout; int max_len; } ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_4__ {int remote; struct tid_rdma_params local; } ;
struct TYPE_3__ {int lock; } ;
struct hfi1_qp_priv {scalar_t__ timeout_shift; TYPE_2__ tid_rdma; scalar_t__ pkts_ps; int tid_timer_timeout_jiffies; TYPE_1__ opfn; } ;


 int GFP_ATOMIC ;
 int HFI1_CAP_IS_KSET (int ) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int TID_RDMA ;
 scalar_t__ ilog2 (scalar_t__) ;
 int kfree_rcu (struct tid_rdma_params*,int ) ;
 struct tid_rdma_params* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct tid_rdma_params*) ;
 struct tid_rdma_params* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 scalar_t__ rvt_div_mtu (struct rvt_qp*,int ) ;
 int tid_rdma_opfn_decode (struct tid_rdma_params*,int) ;
 int trace_hfi1_opfn_param (struct rvt_qp*,int,struct tid_rdma_params*) ;
 int usecs_to_jiffies (unsigned long) ;

bool tid_rdma_conn_reply(struct rvt_qp *qp, u64 data)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct tid_rdma_params *remote, *old;
 bool ret = 1;

 old = rcu_dereference_protected(priv->tid_rdma.remote,
     lockdep_is_held(&priv->opfn.lock));
 data &= ~0xfULL;




 if (!data || !HFI1_CAP_IS_KSET(TID_RDMA))
  goto null;







 remote = kzalloc(sizeof(*remote), GFP_ATOMIC);
 if (!remote) {
  ret = 0;
  goto null;
 }

 tid_rdma_opfn_decode(remote, data);
 priv->tid_timer_timeout_jiffies =
  usecs_to_jiffies((((4096UL * (1UL << remote->timeout)) /
       1000UL) << 3) * 7);
 trace_hfi1_opfn_param(qp, 0, &priv->tid_rdma.local);
 trace_hfi1_opfn_param(qp, 1, remote);
 rcu_assign_pointer(priv->tid_rdma.remote, remote);
 priv->pkts_ps = (u16)rvt_div_mtu(qp, remote->max_len);
 priv->timeout_shift = ilog2(priv->pkts_ps - 1) + 1;
 goto free;
null:
 RCU_INIT_POINTER(priv->tid_rdma.remote, ((void*)0));
 priv->timeout_shift = 0;
free:
 if (old)
  kfree_rcu(old, rcu_head);
 return ret;
}
