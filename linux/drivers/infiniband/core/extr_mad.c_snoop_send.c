
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* snoop_handler ) (TYPE_1__*,struct ib_mad_send_buf*,struct ib_mad_send_wc*) ;} ;
struct ib_mad_snoop_private {int mad_snoop_flags; TYPE_1__ agent; int refcount; } ;
struct ib_mad_send_wc {int dummy; } ;
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_qp_info {int snoop_table_size; int snoop_lock; struct ib_mad_snoop_private** snoop_table; } ;


 int atomic_inc (int *) ;
 int deref_snoop_agent (struct ib_mad_snoop_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,struct ib_mad_send_buf*,struct ib_mad_send_wc*) ;

__attribute__((used)) static void snoop_send(struct ib_mad_qp_info *qp_info,
         struct ib_mad_send_buf *send_buf,
         struct ib_mad_send_wc *mad_send_wc,
         int mad_snoop_flags)
{
 struct ib_mad_snoop_private *mad_snoop_priv;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&qp_info->snoop_lock, flags);
 for (i = 0; i < qp_info->snoop_table_size; i++) {
  mad_snoop_priv = qp_info->snoop_table[i];
  if (!mad_snoop_priv ||
      !(mad_snoop_priv->mad_snoop_flags & mad_snoop_flags))
   continue;

  atomic_inc(&mad_snoop_priv->refcount);
  spin_unlock_irqrestore(&qp_info->snoop_lock, flags);
  mad_snoop_priv->agent.snoop_handler(&mad_snoop_priv->agent,
          send_buf, mad_send_wc);
  deref_snoop_agent(mad_snoop_priv);
  spin_lock_irqsave(&qp_info->snoop_lock, flags);
 }
 spin_unlock_irqrestore(&qp_info->snoop_lock, flags);
}
