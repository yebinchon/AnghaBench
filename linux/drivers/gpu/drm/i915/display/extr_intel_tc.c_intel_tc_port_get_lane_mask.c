
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {int tc_phy_fia; TYPE_2__ base; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;


 int DP_LANE_ASSIGNMENT_MASK (int) ;
 int DP_LANE_ASSIGNMENT_SHIFT (int) ;
 int PORT_TX_DFLEXDPSP (int ) ;
 int WARN_ON (int) ;
 int intel_port_to_tc (struct drm_i915_private*,int ) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 struct intel_uncore *uncore = &i915->uncore;
 u32 lane_mask;

 lane_mask = intel_uncore_read(uncore,
          PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));

 WARN_ON(lane_mask == 0xffffffff);

 return (lane_mask & DP_LANE_ASSIGNMENT_MASK(tc_port)) >>
        DP_LANE_ASSIGNMENT_SHIFT(tc_port);
}
