
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_iowait; } ;


 int flush_tx_list (struct rvt_qp*) ;
 int hfi1_del_tid_reap_timer (struct rvt_qp*) ;
 int hfi1_del_tid_retry_timer (struct rvt_qp*) ;
 int iowait_sdma_drain (int *) ;
 int qp_pio_drain (struct rvt_qp*) ;

void quiesce_qp(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 hfi1_del_tid_reap_timer(qp);
 hfi1_del_tid_retry_timer(qp);
 iowait_sdma_drain(&priv->s_iowait);
 qp_pio_drain(qp);
 flush_tx_list(qp);
}
