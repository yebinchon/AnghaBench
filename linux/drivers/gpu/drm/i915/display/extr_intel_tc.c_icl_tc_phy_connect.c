
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_legacy_port; int tc_mode; int tc_port_name; } ;


 int BIT (int ) ;
 int DRM_DEBUG_KMS (char*,int ,...) ;
 int TC_PORT_DP_ALT ;
 int TC_PORT_LEGACY ;
 int TC_PORT_TBT_ALT ;
 int WARN_ON (int) ;
 int icl_tc_phy_set_safe_mode (struct intel_digital_port*,int) ;
 int icl_tc_phy_status_complete (struct intel_digital_port*) ;
 int intel_tc_port_fia_max_lane_count (struct intel_digital_port*) ;
 int tc_port_live_status_mask (struct intel_digital_port*) ;

__attribute__((used)) static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
          int required_lanes)
{
 int max_lanes;

 if (!icl_tc_phy_status_complete(dig_port)) {
  DRM_DEBUG_KMS("Port %s: PHY not ready\n",
         dig_port->tc_port_name);
  goto out_set_tbt_alt_mode;
 }

 if (!icl_tc_phy_set_safe_mode(dig_port, 0) &&
     !WARN_ON(dig_port->tc_legacy_port))
  goto out_set_tbt_alt_mode;

 max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
 if (dig_port->tc_legacy_port) {
  WARN_ON(max_lanes != 4);
  dig_port->tc_mode = TC_PORT_LEGACY;

  return;
 }





 if (!(tc_port_live_status_mask(dig_port) & BIT(TC_PORT_DP_ALT))) {
  DRM_DEBUG_KMS("Port %s: PHY sudden disconnect\n",
         dig_port->tc_port_name);
  goto out_set_safe_mode;
 }

 if (max_lanes < required_lanes) {
  DRM_DEBUG_KMS("Port %s: PHY max lanes %d < required lanes %d\n",
         dig_port->tc_port_name,
         max_lanes, required_lanes);
  goto out_set_safe_mode;
 }

 dig_port->tc_mode = TC_PORT_DP_ALT;

 return;

out_set_safe_mode:
 icl_tc_phy_set_safe_mode(dig_port, 1);
out_set_tbt_alt_mode:
 dig_port->tc_mode = TC_PORT_TBT_ALT;
}
