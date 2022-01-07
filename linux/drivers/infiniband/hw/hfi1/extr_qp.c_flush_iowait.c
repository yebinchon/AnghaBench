
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int * lock; int list; } ;
struct hfi1_qp_priv {TYPE_1__ s_iowait; } ;
typedef int seqlock_t ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rvt_put_qp (struct rvt_qp*) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void flush_iowait(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 unsigned long flags;
 seqlock_t *lock = priv->s_iowait.lock;

 if (!lock)
  return;
 write_seqlock_irqsave(lock, flags);
 if (!list_empty(&priv->s_iowait.list)) {
  list_del_init(&priv->s_iowait.list);
  priv->s_iowait.lock = ((void*)0);
  rvt_put_qp(qp);
 }
 write_sequnlock_irqrestore(lock, flags);
}
