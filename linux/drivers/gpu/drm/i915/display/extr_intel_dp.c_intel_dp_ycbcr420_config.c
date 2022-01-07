
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int crtc; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int output_format; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_display_info {int dummy; } ;
struct drm_connector {int ycbcr_420_allowed; struct drm_display_info display_info; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 int INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int drm_mode_is_420_only (struct drm_display_info const*,struct drm_display_mode const*) ;
 int intel_dp_get_colorimetry_status (struct intel_dp*) ;
 int intel_pch_panel_fitting (struct intel_crtc*,struct intel_crtc_state*,int ) ;
 int skl_update_scaler_crtc (struct intel_crtc_state*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static int
intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
    struct drm_connector *connector,
    struct intel_crtc_state *crtc_state)
{
 const struct drm_display_info *info = &connector->display_info;
 const struct drm_display_mode *adjusted_mode =
  &crtc_state->base.adjusted_mode;
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 int ret;

 if (!drm_mode_is_420_only(info, adjusted_mode) ||
     !intel_dp_get_colorimetry_status(intel_dp) ||
     !connector->ycbcr_420_allowed)
  return 0;

 crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;


 ret = skl_update_scaler_crtc(crtc_state);
 if (ret) {
  DRM_DEBUG_KMS("Scaler allocation for output failed\n");
  return ret;
 }

 intel_pch_panel_fitting(crtc, crtc_state, DRM_MODE_SCALE_FULLSCREEN);

 return 0;
}
