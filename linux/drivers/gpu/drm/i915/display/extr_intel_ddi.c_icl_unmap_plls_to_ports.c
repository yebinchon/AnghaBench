
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct drm_i915_private {int dpll_lock; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int ICL_DPCLKA_CFGCR0 ;
 int icl_dpclka_cfgcr0_clk_off (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 u32 val;

 mutex_lock(&dev_priv->dpll_lock);

 val = I915_READ(ICL_DPCLKA_CFGCR0);
 val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
 I915_WRITE(ICL_DPCLKA_CFGCR0, val);

 mutex_unlock(&dev_priv->dpll_lock);
}
