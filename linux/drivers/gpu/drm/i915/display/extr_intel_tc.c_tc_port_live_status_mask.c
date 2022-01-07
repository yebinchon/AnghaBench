
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


 int BIT (int ) ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int PORT_TX_DFLEXDPSP (int ) ;
 int SDEISR ;
 int SDE_TC_HOTPLUG_ICP (int) ;
 int TC_LIVE_STATE_TBT (int) ;
 int TC_LIVE_STATE_TC (int) ;
 int TC_PORT_DP_ALT ;
 int TC_PORT_LEGACY ;
 int TC_PORT_TBT_ALT ;
 int WARN_ON (int) ;
 int hweight32 (int) ;
 int intel_port_to_tc (struct drm_i915_private*,int ) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int tc_port_fixup_legacy_flag (struct intel_digital_port*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 struct intel_uncore *uncore = &i915->uncore;
 u32 mask = 0;
 u32 val;

 val = intel_uncore_read(uncore,
    PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));

 if (val == 0xffffffff) {
  DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, nothing connected\n",
         dig_port->tc_port_name);
  return mask;
 }

 if (val & TC_LIVE_STATE_TBT(tc_port))
  mask |= BIT(TC_PORT_TBT_ALT);
 if (val & TC_LIVE_STATE_TC(tc_port))
  mask |= BIT(TC_PORT_DP_ALT);

 if (intel_uncore_read(uncore, SDEISR) & SDE_TC_HOTPLUG_ICP(tc_port))
  mask |= BIT(TC_PORT_LEGACY);


 if (!WARN_ON(hweight32(mask) > 1))
  tc_port_fixup_legacy_flag(dig_port, mask);

 return mask;
}
