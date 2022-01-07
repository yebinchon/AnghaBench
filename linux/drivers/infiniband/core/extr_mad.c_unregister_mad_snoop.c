
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_snoop_private {size_t snoop_index; int agent; int comp; struct ib_mad_qp_info* qp_info; } ;
struct ib_mad_qp_info {int snoop_lock; int snoop_count; int ** snoop_table; } ;


 int atomic_dec (int *) ;
 int deref_snoop_agent (struct ib_mad_snoop_private*) ;
 int ib_mad_agent_security_cleanup (int *) ;
 int kfree (struct ib_mad_snoop_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void unregister_mad_snoop(struct ib_mad_snoop_private *mad_snoop_priv)
{
 struct ib_mad_qp_info *qp_info;
 unsigned long flags;

 qp_info = mad_snoop_priv->qp_info;
 spin_lock_irqsave(&qp_info->snoop_lock, flags);
 qp_info->snoop_table[mad_snoop_priv->snoop_index] = ((void*)0);
 atomic_dec(&qp_info->snoop_count);
 spin_unlock_irqrestore(&qp_info->snoop_lock, flags);

 deref_snoop_agent(mad_snoop_priv);
 wait_for_completion(&mad_snoop_priv->comp);

 ib_mad_agent_security_cleanup(&mad_snoop_priv->agent);

 kfree(mad_snoop_priv);
}
