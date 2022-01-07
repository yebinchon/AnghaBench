
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_lvds_encoder {scalar_t__ a3_power; struct intel_connector* attached_connector; } ;
struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_4__ {int crtc; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {unsigned int pipe_bpp; int has_pch_encoder; int output_format; int bw_constrained; TYPE_1__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct TYPE_5__ {int fixed_mode; } ;
struct intel_connector {TYPE_2__ panel; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int scaling_mode; } ;


 int DRM_DEBUG_KMS (char*,unsigned int,unsigned int) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int EINVAL ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 scalar_t__ LVDS_A3_POWER_UP ;
 int intel_fixed_panel_mode (int ,struct drm_display_mode*) ;
 int intel_gmch_panel_fitting (struct intel_crtc*,struct intel_crtc_state*,int ) ;
 int intel_pch_panel_fitting (struct intel_crtc*,struct intel_crtc_state*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 struct intel_lvds_encoder* to_lvds_encoder (TYPE_3__*) ;

__attribute__((used)) static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
         struct intel_crtc_state *pipe_config,
         struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
 struct intel_lvds_encoder *lvds_encoder =
  to_lvds_encoder(&intel_encoder->base);
 struct intel_connector *intel_connector =
  lvds_encoder->attached_connector;
 struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->base.crtc);
 unsigned int lvds_bpp;


 if (INTEL_GEN(dev_priv) < 4 && intel_crtc->pipe == 0) {
  DRM_ERROR("Can't support LVDS on pipe A\n");
  return -EINVAL;
 }

 if (lvds_encoder->a3_power == LVDS_A3_POWER_UP)
  lvds_bpp = 8*3;
 else
  lvds_bpp = 6*3;

 if (lvds_bpp != pipe_config->pipe_bpp && !pipe_config->bw_constrained) {
  DRM_DEBUG_KMS("forcing display bpp (was %d) to LVDS (%d)\n",
         pipe_config->pipe_bpp, lvds_bpp);
  pipe_config->pipe_bpp = lvds_bpp;
 }

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;







 intel_fixed_panel_mode(intel_connector->panel.fixed_mode,
          adjusted_mode);

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;

 if (HAS_PCH_SPLIT(dev_priv)) {
  pipe_config->has_pch_encoder = 1;

  intel_pch_panel_fitting(intel_crtc, pipe_config,
     conn_state->scaling_mode);
 } else {
  intel_gmch_panel_fitting(intel_crtc, pipe_config,
      conn_state->scaling_mode);

 }







 return 0;
}
