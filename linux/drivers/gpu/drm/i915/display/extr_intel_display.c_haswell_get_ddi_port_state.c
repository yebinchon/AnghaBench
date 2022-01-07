
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_3__* info; } ;
struct intel_crtc_state {int has_pch_encoder; int fdi_lanes; int dpll_hw_state; struct intel_shared_dpll* shared_dpll; int cpu_transcoder; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* get_hw_state ) (struct drm_i915_private*,struct intel_shared_dpll*,int *) ;} ;


 int FDI_DP_PORT_WIDTH_MASK ;
 int FDI_DP_PORT_WIDTH_SHIFT ;
 int FDI_RX_CTL (int ) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int LPT_TRANSCONF ;
 int PIPE_A ;
 int PORT_E ;
 int TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT (int) ;
 int TRANS_DDI_FUNC_CTL (int ) ;
 int TRANS_DDI_FUNC_CTL_VAL_TO_PORT (int) ;
 int TRANS_ENABLE ;
 int WARN_ON (int) ;
 int bxt_get_ddi_pll (struct drm_i915_private*,int,struct intel_crtc_state*) ;
 int cannonlake_get_ddi_pll (struct drm_i915_private*,int,struct intel_crtc_state*) ;
 int haswell_get_ddi_pll (struct drm_i915_private*,int,struct intel_crtc_state*) ;
 int icelake_get_ddi_pll (struct drm_i915_private*,int,struct intel_crtc_state*) ;
 int ironlake_get_fdi_m_n_config (struct intel_crtc*,struct intel_crtc_state*) ;
 int skylake_get_ddi_pll (struct drm_i915_private*,int,struct intel_crtc_state*) ;
 int stub1 (struct drm_i915_private*,struct intel_shared_dpll*,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
           struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_shared_dpll *pll;
 enum port port;
 u32 tmp;

 tmp = I915_READ(TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder));

 if (INTEL_GEN(dev_priv) >= 12)
  port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
 else
  port = TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);

 if (INTEL_GEN(dev_priv) >= 11)
  icelake_get_ddi_pll(dev_priv, port, pipe_config);
 else if (IS_CANNONLAKE(dev_priv))
  cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
 else if (IS_GEN9_BC(dev_priv))
  skylake_get_ddi_pll(dev_priv, port, pipe_config);
 else if (IS_GEN9_LP(dev_priv))
  bxt_get_ddi_pll(dev_priv, port, pipe_config);
 else
  haswell_get_ddi_pll(dev_priv, port, pipe_config);

 pll = pipe_config->shared_dpll;
 if (pll) {
  WARN_ON(!pll->info->funcs->get_hw_state(dev_priv, pll,
      &pipe_config->dpll_hw_state));
 }






 if (INTEL_GEN(dev_priv) < 9 &&
     (port == PORT_E) && I915_READ(LPT_TRANSCONF) & TRANS_ENABLE) {
  pipe_config->has_pch_encoder = 1;

  tmp = I915_READ(FDI_RX_CTL(PIPE_A));
  pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
       FDI_DP_PORT_WIDTH_SHIFT) + 1;

  ironlake_get_fdi_m_n_config(crtc, pipe_config);
 }
}
