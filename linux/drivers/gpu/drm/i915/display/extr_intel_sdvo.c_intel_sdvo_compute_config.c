
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ force_audio; scalar_t__ broadcast_rgb; } ;
struct intel_sdvo_connector_state {TYPE_5__ base; } ;
struct TYPE_8__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_9__ {TYPE_3__ panel; } ;
struct intel_sdvo_connector {scalar_t__ is_hdmi; TYPE_4__ base; } ;
struct intel_sdvo {scalar_t__ has_hdmi_audio; int has_hdmi_monitor; } ;
struct TYPE_7__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct drm_display_mode {int flags; int picture_aspect_ratio; } ;
struct TYPE_6__ {struct drm_display_mode mode; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int has_pch_encoder; int sdvo_tv_clock; int has_audio; int limited_color_range; int has_hdmi_sink; int pixel_multiplier; int output_format; TYPE_1__ base; } ;
struct drm_connector_state {int picture_aspect_ratio; int connector; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int EINVAL ;
 scalar_t__ HAS_PCH_SPLIT (int ) ;
 scalar_t__ HDMI_AUDIO_AUTO ;
 scalar_t__ HDMI_AUDIO_OFF_DVI ;
 scalar_t__ HDMI_AUDIO_ON ;
 scalar_t__ INTEL_BROADCAST_RGB_AUTO ;
 scalar_t__ INTEL_BROADCAST_RGB_LIMITED ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 scalar_t__ IS_LVDS (struct intel_sdvo_connector*) ;
 scalar_t__ IS_TV (struct intel_sdvo_connector*) ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 int i9xx_adjust_sdvo_tv_clock (struct intel_crtc_state*) ;
 int intel_sdvo_compute_avi_infoframe (struct intel_sdvo*,struct intel_crtc_state*,struct drm_connector_state*) ;
 int intel_sdvo_get_pixel_multiplier (struct drm_display_mode*) ;
 int intel_sdvo_get_preferred_input_mode (struct intel_sdvo*,struct intel_sdvo_connector*,struct drm_display_mode*,struct drm_display_mode*) ;
 int intel_sdvo_set_output_timings_from_mode (struct intel_sdvo*,struct drm_display_mode*) ;
 int to_i915 (int ) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (int ) ;
 struct intel_sdvo_connector_state* to_intel_sdvo_connector_state (struct drm_connector_state*) ;
 struct intel_sdvo* to_sdvo (struct intel_encoder*) ;

__attribute__((used)) static int intel_sdvo_compute_config(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config,
         struct drm_connector_state *conn_state)
{
 struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 struct intel_sdvo_connector_state *intel_sdvo_state =
  to_intel_sdvo_connector_state(conn_state);
 struct intel_sdvo_connector *intel_sdvo_connector =
  to_intel_sdvo_connector(conn_state->connector);
 struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 struct drm_display_mode *mode = &pipe_config->base.mode;

 DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
 pipe_config->pipe_bpp = 8*3;
 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

 if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
  pipe_config->has_pch_encoder = 1;







 if (IS_TV(intel_sdvo_connector)) {
  if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, mode))
   return -EINVAL;

  (void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
          intel_sdvo_connector,
          mode,
          adjusted_mode);
  pipe_config->sdvo_tv_clock = 1;
 } else if (IS_LVDS(intel_sdvo_connector)) {
  if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
            intel_sdvo_connector->base.panel.fixed_mode))
   return -EINVAL;

  (void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
          intel_sdvo_connector,
          mode,
          adjusted_mode);
 }

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;





 pipe_config->pixel_multiplier =
  intel_sdvo_get_pixel_multiplier(adjusted_mode);

 if (intel_sdvo_state->base.force_audio != HDMI_AUDIO_OFF_DVI)
  pipe_config->has_hdmi_sink = intel_sdvo->has_hdmi_monitor;

 if (intel_sdvo_state->base.force_audio == HDMI_AUDIO_ON ||
     (intel_sdvo_state->base.force_audio == HDMI_AUDIO_AUTO && intel_sdvo->has_hdmi_audio))
  pipe_config->has_audio = 1;

 if (intel_sdvo_state->base.broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {






  if (pipe_config->has_hdmi_sink &&
      drm_match_cea_mode(adjusted_mode) > 1)
   pipe_config->limited_color_range = 1;
 } else {
  if (pipe_config->has_hdmi_sink &&
      intel_sdvo_state->base.broadcast_rgb == INTEL_BROADCAST_RGB_LIMITED)
   pipe_config->limited_color_range = 1;
 }


 if (IS_TV(intel_sdvo_connector))
  i9xx_adjust_sdvo_tv_clock(pipe_config);


 if (intel_sdvo_connector->is_hdmi)
  adjusted_mode->picture_aspect_ratio = conn_state->picture_aspect_ratio;

 if (!intel_sdvo_compute_avi_infoframe(intel_sdvo,
           pipe_config, conn_state)) {
  DRM_DEBUG_KMS("bad AVI infoframe\n");
  return -EINVAL;
 }

 return 0;
}
