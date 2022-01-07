
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_digital_port {int tc_legacy_port; int tc_port_name; } ;


 int BIT (int ) ;
 int DRM_ERROR (char*,int ,int) ;
 int TC_PORT_DP_ALT ;
 int TC_PORT_LEGACY ;
 int TC_PORT_TBT_ALT ;

__attribute__((used)) static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
          u32 live_status_mask)
{
 u32 valid_hpd_mask;

 if (dig_port->tc_legacy_port)
  valid_hpd_mask = BIT(TC_PORT_LEGACY);
 else
  valid_hpd_mask = BIT(TC_PORT_DP_ALT) |
     BIT(TC_PORT_TBT_ALT);

 if (!(live_status_mask & ~valid_hpd_mask))
  return;


 DRM_ERROR("Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
    dig_port->tc_port_name, live_status_mask);

 dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
}
