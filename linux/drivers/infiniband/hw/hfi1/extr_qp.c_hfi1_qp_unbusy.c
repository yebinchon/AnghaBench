
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; struct hfi1_qp_priv* priv; } ;
struct iowait_work {int dummy; } ;
struct hfi1_qp_priv {int s_flags; int s_iowait; } ;


 int HFI1_S_TID_BUSY_SET ;
 scalar_t__ IOWAIT_IB_SE ;
 int IOWAIT_PENDING_TID ;
 int RVT_S_BUSY ;
 int iowait_set_flag (int *,int ) ;
 scalar_t__ iowait_set_work_flag (struct iowait_work*) ;

void hfi1_qp_unbusy(struct rvt_qp *qp, struct iowait_work *wait)
{
 struct hfi1_qp_priv *priv = qp->priv;

 if (iowait_set_work_flag(wait) == IOWAIT_IB_SE) {
  qp->s_flags &= ~RVT_S_BUSY;
  if (priv->s_flags & HFI1_S_TID_BUSY_SET) {
   priv->s_flags &= ~(HFI1_S_TID_BUSY_SET |
        RVT_S_BUSY);
   iowait_set_flag(&priv->s_iowait, IOWAIT_PENDING_TID);
  }
 } else {
  priv->s_flags &= ~RVT_S_BUSY;
 }
}
