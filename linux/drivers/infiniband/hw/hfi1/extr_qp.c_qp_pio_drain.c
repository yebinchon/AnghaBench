
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {TYPE_1__* s_sendcontext; int s_iowait; } ;
struct TYPE_2__ {int waitlock; } ;


 int hfi1_sc_wantpiobuf_intr (TYPE_1__*,int) ;
 int iowait_pio_drain (int *) ;
 scalar_t__ iowait_pio_pending (int *) ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;

__attribute__((used)) static void qp_pio_drain(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 if (!priv->s_sendcontext)
  return;
 while (iowait_pio_pending(&priv->s_iowait)) {
  write_seqlock_irq(&priv->s_sendcontext->waitlock);
  hfi1_sc_wantpiobuf_intr(priv->s_sendcontext, 1);
  write_sequnlock_irq(&priv->s_sendcontext->waitlock);
  iowait_pio_drain(&priv->s_iowait);
  write_seqlock_irq(&priv->s_sendcontext->waitlock);
  hfi1_sc_wantpiobuf_intr(priv->s_sendcontext, 0);
  write_sequnlock_irq(&priv->s_sendcontext->waitlock);
 }
}
