
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {int shared_dpll; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_ID_LCPLL_1350 ;
 int DPLL_ID_LCPLL_2700 ;
 int DPLL_ID_LCPLL_810 ;
 int DPLL_ID_SPLL ;
 int DPLL_ID_WRPLL1 ;
 int DPLL_ID_WRPLL2 ;
 int I915_READ (int ) ;
 int MISSING_CASE (int) ;
 int PORT_CLK_SEL (int) ;







 int intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;

__attribute__((used)) static void haswell_get_ddi_pll(struct drm_i915_private *dev_priv,
    enum port port,
    struct intel_crtc_state *pipe_config)
{
 enum intel_dpll_id id;
 u32 ddi_pll_sel = I915_READ(PORT_CLK_SEL(port));

 switch (ddi_pll_sel) {
 case 129:
  id = DPLL_ID_WRPLL1;
  break;
 case 128:
  id = DPLL_ID_WRPLL2;
  break;
 case 130:
  id = DPLL_ID_SPLL;
  break;
 case 132:
  id = DPLL_ID_LCPLL_810;
  break;
 case 134:
  id = DPLL_ID_LCPLL_1350;
  break;
 case 133:
  id = DPLL_ID_LCPLL_2700;
  break;
 default:
  MISSING_CASE(ddi_pll_sel);

 case 131:
  return;
 }

 pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
}
