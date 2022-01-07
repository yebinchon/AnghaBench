
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {int shared_dpll; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_CTRL2 ;
 int DPLL_CTRL2_DDI_CLK_SEL_MASK (int) ;
 int I915_READ (int ) ;
 int SKL_DPLL0 ;
 int SKL_DPLL3 ;
 scalar_t__ WARN_ON (int) ;
 int intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;

__attribute__((used)) static void skylake_get_ddi_pll(struct drm_i915_private *dev_priv,
    enum port port,
    struct intel_crtc_state *pipe_config)
{
 enum intel_dpll_id id;
 u32 temp;

 temp = I915_READ(DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_MASK(port);
 id = temp >> (port * 3 + 1);

 if (WARN_ON(id < SKL_DPLL0 || id > SKL_DPLL3))
  return;

 pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
}
