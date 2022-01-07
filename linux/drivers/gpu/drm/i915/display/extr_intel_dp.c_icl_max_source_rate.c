
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int IS_ELKHARTLAKE (struct drm_i915_private*) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int icl_max_source_rate(struct intel_dp *intel_dp)
{
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);

 if (intel_phy_is_combo(dev_priv, phy) &&
     !IS_ELKHARTLAKE(dev_priv) &&
     !intel_dp_is_edp(intel_dp))
  return 540000;

 return 810000;
}
