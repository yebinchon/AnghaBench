
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {int shared_dpll; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPCLKA_CFGCR0 ;
 int DPCLKA_CFGCR0_DDI_CLK_SEL_MASK (int) ;
 int DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT (int) ;
 int I915_READ (int ) ;
 int SKL_DPLL0 ;
 int SKL_DPLL2 ;
 scalar_t__ WARN_ON (int) ;
 int intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;

__attribute__((used)) static void cannonlake_get_ddi_pll(struct drm_i915_private *dev_priv,
       enum port port,
       struct intel_crtc_state *pipe_config)
{
 enum intel_dpll_id id;
 u32 temp;

 temp = I915_READ(DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
 id = temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);

 if (WARN_ON(id < SKL_DPLL0 || id > SKL_DPLL2))
  return;

 pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
}
