
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_digital_connector_state {scalar_t__ broadcast_rgb; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; TYPE_1__ base; } ;
struct drm_connector_state {int dummy; } ;


 scalar_t__ HDMI_QUANTIZATION_RANGE_LIMITED ;
 scalar_t__ INTEL_BROADCAST_RGB_AUTO ;
 scalar_t__ INTEL_BROADCAST_RGB_LIMITED ;
 scalar_t__ drm_default_rgb_quant_range (struct drm_display_mode const*) ;
 struct intel_digital_connector_state* to_intel_digital_connector_state (struct drm_connector_state const*) ;

bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 const struct intel_digital_connector_state *intel_conn_state =
  to_intel_digital_connector_state(conn_state);
 const struct drm_display_mode *adjusted_mode =
  &crtc_state->base.adjusted_mode;

 if (intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {





  return crtc_state->pipe_bpp != 18 &&
   drm_default_rgb_quant_range(adjusted_mode) ==
   HDMI_QUANTIZATION_RANGE_LIMITED;
 } else {
  return intel_conn_state->broadcast_rgb ==
   INTEL_BROADCAST_RGB_LIMITED;
 }
}
