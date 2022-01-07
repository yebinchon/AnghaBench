
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int s_work; } ;


 int cancel_work_sync (int *) ;

void qib_stop_send_queue(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;

 cancel_work_sync(&priv->s_work);
}
