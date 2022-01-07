
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_iowait; } ;


 int iowait_drain_wakeup (int *) ;
 scalar_t__ iowait_pio_dec (int *) ;

__attribute__((used)) static void verbs_pio_complete(void *arg, int code)
{
 struct rvt_qp *qp = (struct rvt_qp *)arg;
 struct hfi1_qp_priv *priv = qp->priv;

 if (iowait_pio_dec(&priv->s_iowait))
  iowait_drain_wakeup(&priv->s_iowait);
}
