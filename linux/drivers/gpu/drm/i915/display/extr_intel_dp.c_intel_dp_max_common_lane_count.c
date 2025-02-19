
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dpcd; } ;
struct intel_digital_port {int max_lanes; } ;


 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int drm_dp_max_lane_count (int ) ;
 int intel_tc_port_fia_max_lane_count (struct intel_digital_port*) ;
 int min3 (int,int,int) ;

__attribute__((used)) static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 int source_max = intel_dig_port->max_lanes;
 int sink_max = drm_dp_max_lane_count(intel_dp->dpcd);
 int fia_max = intel_tc_port_fia_max_lane_count(intel_dig_port);

 return min3(source_max, sink_max, fia_max);
}
