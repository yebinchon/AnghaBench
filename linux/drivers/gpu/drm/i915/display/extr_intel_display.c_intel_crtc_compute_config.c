
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int crtc_clock; scalar_t__ crtc_hsync_start; scalar_t__ crtc_hdisplay; } ;
struct TYPE_4__ {scalar_t__ ctm; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int double_wide; scalar_t__ output_format; int pipe_src_w; scalar_t__ has_pch_encoder; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int max_dotclk_freq; int max_cdclk_freq; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int EINVAL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 int intel_crtc_compute_pixel_rate (struct intel_crtc_state*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 scalar_t__ intel_crtc_supports_double_wide (struct intel_crtc*) ;
 scalar_t__ intel_is_dual_link_lvds (struct drm_i915_private*) ;
 int ironlake_fdi_compute_config (struct intel_crtc*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;
 int yesno (int) ;

__attribute__((used)) static int intel_crtc_compute_config(struct intel_crtc *crtc,
         struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 const struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 int clock_limit = dev_priv->max_dotclk_freq;

 if (INTEL_GEN(dev_priv) < 4) {
  clock_limit = dev_priv->max_cdclk_freq * 9 / 10;





  if (intel_crtc_supports_double_wide(crtc) &&
      adjusted_mode->crtc_clock > clock_limit) {
   clock_limit = dev_priv->max_dotclk_freq;
   pipe_config->double_wide = 1;
  }
 }

 if (adjusted_mode->crtc_clock > clock_limit) {
  DRM_DEBUG_KMS("requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
         adjusted_mode->crtc_clock, clock_limit,
         yesno(pipe_config->double_wide));
  return -EINVAL;
 }

 if ((pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
      pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) &&
      pipe_config->base.ctm) {





  DRM_DEBUG_KMS("YCBCR420 and CTM together are not possible\n");
  return -EINVAL;
 }







 if (pipe_config->pipe_src_w & 1) {
  if (pipe_config->double_wide) {
   DRM_DEBUG_KMS("Odd pipe source width not supported with double wide pipe\n");
   return -EINVAL;
  }

  if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_LVDS) &&
      intel_is_dual_link_lvds(dev_priv)) {
   DRM_DEBUG_KMS("Odd pipe source width not supported with dual link LVDS\n");
   return -EINVAL;
  }
 }




 if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
  adjusted_mode->crtc_hsync_start == adjusted_mode->crtc_hdisplay)
  return -EINVAL;

 intel_crtc_compute_pixel_rate(pipe_config);

 if (pipe_config->has_pch_encoder)
  return ironlake_fdi_compute_config(crtc, pipe_config);

 return 0;
}
