
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_iowait; } ;


 int IOWAIT_PENDING_IB ;
 int IOWAIT_PENDING_TID ;
 int hfi1_schedule_send (struct rvt_qp*) ;
 int hfi1_schedule_tid_send (struct rvt_qp*) ;
 int iowait_clear_flag (int *,int ) ;
 scalar_t__ iowait_flag_set (int *,int ) ;

__attribute__((used)) static void hfi1_qp_schedule(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 bool ret;

 if (iowait_flag_set(&priv->s_iowait, IOWAIT_PENDING_IB)) {
  ret = hfi1_schedule_send(qp);
  if (ret)
   iowait_clear_flag(&priv->s_iowait, IOWAIT_PENDING_IB);
 }
 if (iowait_flag_set(&priv->s_iowait, IOWAIT_PENDING_TID)) {
  ret = hfi1_schedule_tid_send(qp);
  if (ret)
   iowait_clear_flag(&priv->s_iowait, IOWAIT_PENDING_TID);
 }
}
