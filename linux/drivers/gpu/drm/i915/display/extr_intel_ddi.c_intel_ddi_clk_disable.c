
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;


 int DDI_CLK_SEL (int) ;
 int DDI_CLK_SEL_NONE ;
 int DPCLKA_CFGCR0 ;
 int DPCLKA_CFGCR0_DDI_CLK_OFF (int) ;
 int DPLL_CTRL2 ;
 int DPLL_CTRL2_DDI_CLK_OFF (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 int PORT_C ;
 int PORT_CLK_SEL (int) ;
 int PORT_CLK_SEL_NONE ;
 int intel_phy_is_combo (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_ddi_clk_disable(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = encoder->port;
 enum phy phy = intel_port_to_phy(dev_priv, port);

 if (INTEL_GEN(dev_priv) >= 11) {
  if (!intel_phy_is_combo(dev_priv, phy) ||
      (IS_ELKHARTLAKE(dev_priv) && port >= PORT_C))
   I915_WRITE(DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 } else if (IS_CANNONLAKE(dev_priv)) {
  I915_WRITE(DPCLKA_CFGCR0, I915_READ(DPCLKA_CFGCR0) |
      DPCLKA_CFGCR0_DDI_CLK_OFF(port));
 } else if (IS_GEN9_BC(dev_priv)) {
  I915_WRITE(DPLL_CTRL2, I915_READ(DPLL_CTRL2) |
      DPLL_CTRL2_DDI_CLK_OFF(port));
 } else if (INTEL_GEN(dev_priv) < 9) {
  I915_WRITE(PORT_CLK_SEL(port), PORT_CLK_SEL_NONE);
 }
}
