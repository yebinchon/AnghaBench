
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int shared_dpll; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_ID_SKL_DPLL0 ;
 int DPLL_ID_SKL_DPLL1 ;
 int DPLL_ID_SKL_DPLL2 ;
 int DRM_ERROR (char*) ;



 int intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;

__attribute__((used)) static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
    enum port port,
    struct intel_crtc_state *pipe_config)
{
 enum intel_dpll_id id;

 switch (port) {
 case 130:
  id = DPLL_ID_SKL_DPLL0;
  break;
 case 129:
  id = DPLL_ID_SKL_DPLL1;
  break;
 case 128:
  id = DPLL_ID_SKL_DPLL2;
  break;
 default:
  DRM_ERROR("Incorrect port type\n");
  return;
 }

 pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
}
