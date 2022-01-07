
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_agent {int security; int mad_agent_sec_list; TYPE_1__* qp; int port_num; int device; } ;
struct TYPE_2__ {scalar_t__ qp_type; } ;


 scalar_t__ IB_QPT_SMI ;
 int list_del (int *) ;
 int mad_agent_list_lock ;
 int rdma_protocol_ib (int ,int ) ;
 int security_ib_free_security (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ib_mad_agent_security_cleanup(struct ib_mad_agent *agent)
{
 if (!rdma_protocol_ib(agent->device, agent->port_num))
  return;

 if (agent->qp->qp_type == IB_QPT_SMI) {
  spin_lock(&mad_agent_list_lock);
  list_del(&agent->mad_agent_sec_list);
  spin_unlock(&mad_agent_list_lock);
 }

 security_ib_free_security(agent->security);
}
