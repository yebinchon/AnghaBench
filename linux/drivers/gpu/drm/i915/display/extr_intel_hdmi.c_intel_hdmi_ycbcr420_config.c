
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc; } ;
struct intel_crtc_state {int port_clock; int output_format; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_connector {int ycbcr_420_allowed; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 int INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int intel_pch_panel_fitting (struct intel_crtc*,struct intel_crtc_state*,int ) ;
 scalar_t__ skl_update_scaler_crtc (struct intel_crtc_state*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static bool
intel_hdmi_ycbcr420_config(struct drm_connector *connector,
      struct intel_crtc_state *config,
      int *clock_12bpc, int *clock_10bpc,
      int *clock_8bpc)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(config->base.crtc);

 if (!connector->ycbcr_420_allowed) {
  DRM_ERROR("Platform doesn't support YCBCR420 output\n");
  return 0;
 }


 config->port_clock /= 2;
 *clock_12bpc /= 2;
 *clock_10bpc /= 2;
 *clock_8bpc /= 2;
 config->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;


 if (skl_update_scaler_crtc(config)) {
  DRM_DEBUG_KMS("Scaler allocation for output failed\n");
  return 0;
 }

 intel_pch_panel_fitting(intel_crtc, config,
    DRM_MODE_SCALE_FULLSCREEN);

 return 1;
}
