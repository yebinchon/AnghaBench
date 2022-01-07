
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_3__* info; } ;
struct TYPE_8__ {int dpll; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; int limited_color_range; int gamma_mode; int csc_mode; int has_pch_encoder; int fdi_lanes; int pixel_multiplier; TYPE_4__ dpll_hw_state; struct intel_shared_dpll* shared_dpll; int output_format; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_6__ {int (* get_hw_state ) (struct drm_i915_private*,struct intel_shared_dpll*,TYPE_4__*) ;} ;


 int DPLL_ID_PCH_PLL_A ;
 int DPLL_ID_PCH_PLL_B ;
 int FDI_DP_PORT_WIDTH_MASK ;
 int FDI_DP_PORT_WIDTH_SHIFT ;
 int FDI_RX_CTL (scalar_t__) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 int PCH_DPLL_SEL ;
 int PCH_TRANSCONF (scalar_t__) ;
 int PIPECONF (scalar_t__) ;




 int PIPECONF_BPC_MASK ;
 int PIPECONF_COLOR_RANGE_SELECT ;
 int PIPECONF_ENABLE ;
 int PIPECONF_GAMMA_MODE_MASK_ILK ;
 int PIPECONF_GAMMA_MODE_SHIFT ;
 int PIPE_CSC_MODE (scalar_t__) ;
 int PLL_REF_SDVO_HDMI_MULTIPLIER_MASK ;
 int PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT ;
 int POWER_DOMAIN_PIPE (scalar_t__) ;
 int TRANS_DPLLB_SEL (scalar_t__) ;
 int TRANS_ENABLE ;
 int WARN_ON (int) ;
 int i9xx_get_pipe_color_config (struct intel_crtc_state*) ;
 int intel_color_get_config (struct intel_crtc_state*) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 int intel_get_pipe_src_size (struct intel_crtc*,struct intel_crtc_state*) ;
 int intel_get_pipe_timings (struct intel_crtc*,struct intel_crtc_state*) ;
 struct intel_shared_dpll* intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;
 int ironlake_get_fdi_m_n_config (struct intel_crtc*,struct intel_crtc_state*) ;
 int ironlake_get_pfit_config (struct intel_crtc*,struct intel_crtc_state*) ;
 int ironlake_pch_clock_get (struct intel_crtc*,struct intel_crtc_state*) ;
 int stub1 (struct drm_i915_private*,struct intel_shared_dpll*,TYPE_4__*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
         struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 enum intel_display_power_domain power_domain;
 intel_wakeref_t wakeref;
 u32 tmp;
 bool ret;

 power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (!wakeref)
  return 0;

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
 pipe_config->shared_dpll = ((void*)0);

 ret = 0;
 tmp = I915_READ(PIPECONF(crtc->pipe));
 if (!(tmp & PIPECONF_ENABLE))
  goto out;

 switch (tmp & PIPECONF_BPC_MASK) {
 case 129:
  pipe_config->pipe_bpp = 18;
  break;
 case 128:
  pipe_config->pipe_bpp = 24;
  break;
 case 131:
  pipe_config->pipe_bpp = 30;
  break;
 case 130:
  pipe_config->pipe_bpp = 36;
  break;
 default:
  break;
 }

 if (tmp & PIPECONF_COLOR_RANGE_SELECT)
  pipe_config->limited_color_range = 1;

 pipe_config->gamma_mode = (tmp & PIPECONF_GAMMA_MODE_MASK_ILK) >>
  PIPECONF_GAMMA_MODE_SHIFT;

 pipe_config->csc_mode = I915_READ(PIPE_CSC_MODE(crtc->pipe));

 i9xx_get_pipe_color_config(pipe_config);
 intel_color_get_config(pipe_config);

 if (I915_READ(PCH_TRANSCONF(crtc->pipe)) & TRANS_ENABLE) {
  struct intel_shared_dpll *pll;
  enum intel_dpll_id pll_id;

  pipe_config->has_pch_encoder = 1;

  tmp = I915_READ(FDI_RX_CTL(crtc->pipe));
  pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
       FDI_DP_PORT_WIDTH_SHIFT) + 1;

  ironlake_get_fdi_m_n_config(crtc, pipe_config);

  if (HAS_PCH_IBX(dev_priv)) {




   pll_id = (enum intel_dpll_id) crtc->pipe;
  } else {
   tmp = I915_READ(PCH_DPLL_SEL);
   if (tmp & TRANS_DPLLB_SEL(crtc->pipe))
    pll_id = DPLL_ID_PCH_PLL_B;
   else
    pll_id= DPLL_ID_PCH_PLL_A;
  }

  pipe_config->shared_dpll =
   intel_get_shared_dpll_by_id(dev_priv, pll_id);
  pll = pipe_config->shared_dpll;

  WARN_ON(!pll->info->funcs->get_hw_state(dev_priv, pll,
      &pipe_config->dpll_hw_state));

  tmp = pipe_config->dpll_hw_state.dpll;
  pipe_config->pixel_multiplier =
   ((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
    >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;

  ironlake_pch_clock_get(crtc, pipe_config);
 } else {
  pipe_config->pixel_multiplier = 1;
 }

 intel_get_pipe_timings(crtc, pipe_config);
 intel_get_pipe_src_size(crtc, pipe_config);

 ironlake_get_pfit_config(crtc, pipe_config);

 ret = 1;

out:
 intel_display_power_put(dev_priv, power_domain, wakeref);

 return ret;
}
