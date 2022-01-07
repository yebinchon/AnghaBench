
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int s_dma_busy; } ;


 int atomic_set (int *,int ) ;

void qib_notify_qp_reset(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;

 atomic_set(&priv->s_dma_busy, 0);
}
