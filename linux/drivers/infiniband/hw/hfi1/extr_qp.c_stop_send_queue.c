
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int trigger_work; } ;
struct hfi1_qp_priv {TYPE_1__ tid_rdma; int s_iowait; } ;


 scalar_t__ cancel_work_sync (int *) ;
 int iowait_cancel_work (int *) ;
 int rvt_put_qp (struct rvt_qp*) ;

void stop_send_queue(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 iowait_cancel_work(&priv->s_iowait);
 if (cancel_work_sync(&priv->tid_rdma.trigger_work))
  rvt_put_qp(qp);
}
