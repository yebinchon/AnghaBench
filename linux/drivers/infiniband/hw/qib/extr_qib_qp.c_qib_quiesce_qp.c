
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int * s_tx; int s_dma_busy; int wait_dma; } ;


 int atomic_read (int *) ;
 int qib_put_txreq (int *) ;
 int wait_event (int ,int) ;

void qib_quiesce_qp(struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;

 wait_event(priv->wait_dma, !atomic_read(&priv->s_dma_busy));
 if (priv->s_tx) {
  qib_put_txreq(priv->s_tx);
  priv->s_tx = ((void*)0);
 }
}
