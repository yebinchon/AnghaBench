
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rmpp_type; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct ib_mad_hdr {int dummy; } ;
struct TYPE_3__ {int rmpp_version; } ;
struct ib_mad_agent_private {TYPE_1__ agent; } ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 scalar_t__ IB_MGMT_RMPP_TYPE_DATA ;
 int ib_get_rmpp_flags (TYPE_2__*) ;
 int ib_mad_kernel_rmpp_agent (TYPE_1__*) ;

__attribute__((used)) static int is_rmpp_data_mad(const struct ib_mad_agent_private *mad_agent_priv,
       const struct ib_mad_hdr *mad_hdr)
{
 struct ib_rmpp_mad *rmpp_mad;

 rmpp_mad = (struct ib_rmpp_mad *)mad_hdr;
 return !mad_agent_priv->agent.rmpp_version ||
  !ib_mad_kernel_rmpp_agent(&mad_agent_priv->agent) ||
  !(ib_get_rmpp_flags(&rmpp_mad->rmpp_hdr) &
        IB_MGMT_RMPP_FLAG_ACTIVE) ||
  (rmpp_mad->rmpp_hdr.rmpp_type == IB_MGMT_RMPP_TYPE_DATA);
}
