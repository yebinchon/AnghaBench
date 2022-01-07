
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int security; int port_num; int device; int smp_allowed; TYPE_1__* qp; } ;
struct ib_mad_agent_private {TYPE_2__ agent; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;


 int EACCES ;
 scalar_t__ IB_QPT_SMI ;
 int READ_ONCE (int ) ;
 int ib_security_pkey_access (int ,int ,int ,int ) ;
 int rdma_protocol_ib (int ,int ) ;

int ib_mad_enforce_security(struct ib_mad_agent_private *map, u16 pkey_index)
{
 if (!rdma_protocol_ib(map->agent.device, map->agent.port_num))
  return 0;

 if (map->agent.qp->qp_type == IB_QPT_SMI) {
  if (!READ_ONCE(map->agent.smp_allowed))
   return -EACCES;
  return 0;
 }

 return ib_security_pkey_access(map->agent.device,
           map->agent.port_num,
           pkey_index,
           map->agent.security);
}
