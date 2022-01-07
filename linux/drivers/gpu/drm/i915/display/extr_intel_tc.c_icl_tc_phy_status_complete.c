
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
struct intel_digital_port {int tc_port_name; int tc_phy_fia; TYPE_2__ base; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;


 int DP_PHY_MODE_STATUS_COMPLETED (int) ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int PORT_TX_DFLEXDPPMS (int ) ;
 int intel_port_to_tc (struct drm_i915_private*,int ) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 struct intel_uncore *uncore = &i915->uncore;
 u32 val;

 val = intel_uncore_read(uncore,
    PORT_TX_DFLEXDPPMS(dig_port->tc_phy_fia));
 if (val == 0xffffffff) {
  DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, assuming not complete\n",
         dig_port->tc_port_name);
  return 0;
 }

 return val & DP_PHY_MODE_STATUS_COMPLETED(tc_port);
}
