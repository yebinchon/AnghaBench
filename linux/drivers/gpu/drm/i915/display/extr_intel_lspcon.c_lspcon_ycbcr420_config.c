
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int port_clock; int lspcon_downsampling; int output_format; TYPE_1__ base; } ;
struct drm_display_info {int dummy; } ;
struct drm_connector {scalar_t__ ycbcr_420_allowed; struct drm_display_info display_info; } ;


 int INTEL_OUTPUT_FORMAT_YCBCR444 ;
 scalar_t__ drm_mode_is_420_only (struct drm_display_info const*,struct drm_display_mode const*) ;

void lspcon_ycbcr420_config(struct drm_connector *connector,
       struct intel_crtc_state *crtc_state)
{
 const struct drm_display_info *info = &connector->display_info;
 const struct drm_display_mode *adjusted_mode =
     &crtc_state->base.adjusted_mode;

 if (drm_mode_is_420_only(info, adjusted_mode) &&
     connector->ycbcr_420_allowed) {
  crtc_state->port_clock /= 2;
  crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
  crtc_state->lspcon_downsampling = 1;
 }
}
