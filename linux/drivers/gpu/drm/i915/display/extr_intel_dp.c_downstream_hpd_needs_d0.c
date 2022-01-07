
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* dpcd; int* downstream_ports; } ;


 size_t DP_DOWNSTREAMPORT_PRESENT ;
 size_t DP_DPCD_REV ;
 int DP_DS_PORT_HPD ;
 int DP_DWN_STRM_PORT_PRESENT ;

__attribute__((used)) static bool downstream_hpd_needs_d0(struct intel_dp *intel_dp)
{
 return intel_dp->dpcd[DP_DPCD_REV] == 0x11 &&
  intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT &&
  intel_dp->downstream_ports[0] & DP_DS_PORT_HPD;
}
