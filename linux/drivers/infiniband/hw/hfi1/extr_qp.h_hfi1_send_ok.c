
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_iowait; } ;


 int HFI1_S_ANY_WAIT_IO ;
 int RVT_S_ANY_WAIT_SEND ;
 int RVT_S_BUSY ;
 int RVT_S_RESP_PENDING ;
 int iowait_get_ib_work (int *) ;
 scalar_t__ verbs_txreq_queued (int ) ;

__attribute__((used)) static inline int hfi1_send_ok(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 return !(qp->s_flags & (RVT_S_BUSY | HFI1_S_ANY_WAIT_IO)) &&
  (verbs_txreq_queued(iowait_get_ib_work(&priv->s_iowait)) ||
  (qp->s_flags & RVT_S_RESP_PENDING) ||
   !(qp->s_flags & RVT_S_ANY_WAIT_SEND));
}
