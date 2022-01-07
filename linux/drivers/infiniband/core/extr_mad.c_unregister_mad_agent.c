
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_mad_port_private {int wq; int reg_lock; } ;
struct TYPE_4__ {int hi_tid; } ;
struct ib_mad_agent_private {int reg_req; TYPE_2__ agent; int comp; int timed_work; TYPE_1__* qp_info; } ;
struct TYPE_3__ {struct ib_mad_port_private* port_priv; } ;


 int cancel_delayed_work (int *) ;
 int cancel_mads (struct ib_mad_agent_private*) ;
 int deref_mad_agent (struct ib_mad_agent_private*) ;
 int flush_workqueue (int ) ;
 int ib_cancel_rmpp_recvs (struct ib_mad_agent_private*) ;
 int ib_mad_agent_security_cleanup (TYPE_2__*) ;
 int ib_mad_clients ;
 int kfree (int ) ;
 int kfree_rcu (struct ib_mad_agent_private*,int ) ;
 int rcu ;
 int remove_mad_reg_req (struct ib_mad_agent_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_ib_mad_unregister_agent (struct ib_mad_agent_private*) ;
 int wait_for_completion (int *) ;
 int xa_erase (int *,int ) ;

__attribute__((used)) static void unregister_mad_agent(struct ib_mad_agent_private *mad_agent_priv)
{
 struct ib_mad_port_private *port_priv;


 trace_ib_mad_unregister_agent(mad_agent_priv);





 cancel_mads(mad_agent_priv);
 port_priv = mad_agent_priv->qp_info->port_priv;
 cancel_delayed_work(&mad_agent_priv->timed_work);

 spin_lock_irq(&port_priv->reg_lock);
 remove_mad_reg_req(mad_agent_priv);
 spin_unlock_irq(&port_priv->reg_lock);
 xa_erase(&ib_mad_clients, mad_agent_priv->agent.hi_tid);

 flush_workqueue(port_priv->wq);
 ib_cancel_rmpp_recvs(mad_agent_priv);

 deref_mad_agent(mad_agent_priv);
 wait_for_completion(&mad_agent_priv->comp);

 ib_mad_agent_security_cleanup(&mad_agent_priv->agent);

 kfree(mad_agent_priv->reg_req);
 kfree_rcu(mad_agent_priv, rcu);
}
