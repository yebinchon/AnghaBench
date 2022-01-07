
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;


 int GMBUS_PIN_1_BXT ;
 int GMBUS_PIN_2_BXT ;
 int GMBUS_PIN_9_TC1_ICP ;
 int WARN (int,char*,int ) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 scalar_t__ intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int) ;
 int intel_port_to_tc (struct drm_i915_private*,int) ;
 int port_name (int) ;

__attribute__((used)) static u8 icl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
{
 enum phy phy = intel_port_to_phy(dev_priv, port);

 if (intel_phy_is_combo(dev_priv, phy))
  return GMBUS_PIN_1_BXT + port;
 else if (intel_phy_is_tc(dev_priv, phy))
  return GMBUS_PIN_9_TC1_ICP + intel_port_to_tc(dev_priv, port);

 WARN(1, "Unknown port:%c\n", port_name(port));
 return GMBUS_PIN_2_BXT;
}
