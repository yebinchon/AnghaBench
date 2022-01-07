
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_agent {int security; int mad_agent_sec_list; int smp_allowed; int port_num; TYPE_1__* device; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_2__ {int dev; } ;


 int IB_QPT_SMI ;
 int INIT_LIST_HEAD (int *) ;
 int WRITE_ONCE (int ,int) ;
 int dev_name (int *) ;
 int list_add (int *,int *) ;
 int mad_agent_list ;
 int mad_agent_list_lock ;
 int rdma_protocol_ib (TYPE_1__*,int ) ;
 int security_ib_alloc_security (int *) ;
 int security_ib_endport_manage_subnet (int ,int ,int ) ;
 int security_ib_free_security (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ib_mad_agent_security_setup(struct ib_mad_agent *agent,
    enum ib_qp_type qp_type)
{
 int ret;

 if (!rdma_protocol_ib(agent->device, agent->port_num))
  return 0;

 INIT_LIST_HEAD(&agent->mad_agent_sec_list);

 ret = security_ib_alloc_security(&agent->security);
 if (ret)
  return ret;

 if (qp_type != IB_QPT_SMI)
  return 0;

 spin_lock(&mad_agent_list_lock);
 ret = security_ib_endport_manage_subnet(agent->security,
      dev_name(&agent->device->dev),
      agent->port_num);
 if (ret)
  goto free_security;

 WRITE_ONCE(agent->smp_allowed, 1);
 list_add(&agent->mad_agent_sec_list, &mad_agent_list);
 spin_unlock(&mad_agent_list_lock);
 return 0;

free_security:
 spin_unlock(&mad_agent_list_lock);
 security_ib_free_security(agent->security);
 return ret;
}
