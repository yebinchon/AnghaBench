
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {int s_flags; int * s_rdma_mr; scalar_t__ s_hdrwords; struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int * lock; int list; } ;
struct hfi1_qp_priv {int s_flags; TYPE_1__ s_iowait; } ;
typedef int seqlock_t ;


 int HFI1_S_ANY_WAIT_IO ;
 int IOWAIT_PENDING_IB ;
 int IOWAIT_PENDING_TID ;
 int RVT_S_BUSY ;
 int flush_tx_list (struct rvt_qp*) ;
 int iowait_clear_flag (TYPE_1__*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rvt_put_mr (int *) ;
 int rvt_put_qp (struct rvt_qp*) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void notify_error_qp(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 seqlock_t *lock = priv->s_iowait.lock;

 if (lock) {
  write_seqlock(lock);
  if (!list_empty(&priv->s_iowait.list) &&
      !(qp->s_flags & RVT_S_BUSY) &&
      !(priv->s_flags & RVT_S_BUSY)) {
   qp->s_flags &= ~HFI1_S_ANY_WAIT_IO;
   iowait_clear_flag(&priv->s_iowait, IOWAIT_PENDING_IB);
   iowait_clear_flag(&priv->s_iowait, IOWAIT_PENDING_TID);
   list_del_init(&priv->s_iowait.list);
   priv->s_iowait.lock = ((void*)0);
   rvt_put_qp(qp);
  }
  write_sequnlock(lock);
 }

 if (!(qp->s_flags & RVT_S_BUSY) && !(priv->s_flags & RVT_S_BUSY)) {
  qp->s_hdrwords = 0;
  if (qp->s_rdma_mr) {
   rvt_put_mr(qp->s_rdma_mr);
   qp->s_rdma_mr = ((void*)0);
  }
  flush_tx_list(qp);
 }
}
