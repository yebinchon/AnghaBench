
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int dtd_flags; } ;
struct intel_sdvo_dtd {TYPE_2__ part2; } ;
struct intel_sdvo {int sdvo_reg; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_7__ {int flags; int crtc_clock; } ;
struct TYPE_8__ {TYPE_3__ adjusted_mode; } ;
struct intel_crtc_state {int pixel_multiplier; int port_clock; int limited_color_range; int has_audio; int has_hdmi_sink; TYPE_4__ base; int quirks; int output_types; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int BIT (int ) ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DTD_FLAG_HSYNC_POSITIVE ;
 int DTD_FLAG_VSYNC_POSITIVE ;
 int HDMI_COLOR_RANGE_16_235 ;
 int I915_READ (int ) ;
 int INTEL_OUTPUT_SDVO ;
 scalar_t__ IS_I915G (struct drm_i915_private*) ;
 scalar_t__ IS_I915GM (struct drm_i915_private*) ;
 int PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS ;
 int SDVO_AUDIO_ELD_VALID ;
 int SDVO_AUDIO_PRESENCE_DETECT ;



 int SDVO_CMD_GET_AUDIO_STAT ;
 int SDVO_CMD_GET_CLOCK_RATE_MULT ;
 int SDVO_CMD_GET_ENCODE ;
 int SDVO_ENCODE_HDMI ;
 int SDVO_PORT_MULTIPLY_MASK ;
 int SDVO_PORT_MULTIPLY_SHIFT ;
 int WARN (int,char*,int,int) ;
 int intel_sdvo_get_avi_infoframe (struct intel_sdvo*,struct intel_crtc_state*) ;
 int intel_sdvo_get_input_timing (struct intel_sdvo*,struct intel_sdvo_dtd*) ;
 scalar_t__ intel_sdvo_get_value (struct intel_sdvo*,int ,int*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_sdvo* to_sdvo (struct intel_encoder*) ;

__attribute__((used)) static void intel_sdvo_get_config(struct intel_encoder *encoder,
      struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 struct intel_sdvo_dtd dtd;
 int encoder_pixel_multiplier = 0;
 int dotclock;
 u32 flags = 0, sdvox;
 u8 val;
 bool ret;

 pipe_config->output_types |= BIT(INTEL_OUTPUT_SDVO);

 sdvox = I915_READ(intel_sdvo->sdvo_reg);

 ret = intel_sdvo_get_input_timing(intel_sdvo, &dtd);
 if (!ret) {




  DRM_DEBUG_DRIVER("failed to retrieve SDVO DTD\n");
  pipe_config->quirks |= PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS;
 } else {
  if (dtd.part2.dtd_flags & DTD_FLAG_HSYNC_POSITIVE)
   flags |= DRM_MODE_FLAG_PHSYNC;
  else
   flags |= DRM_MODE_FLAG_NHSYNC;

  if (dtd.part2.dtd_flags & DTD_FLAG_VSYNC_POSITIVE)
   flags |= DRM_MODE_FLAG_PVSYNC;
  else
   flags |= DRM_MODE_FLAG_NVSYNC;
 }

 pipe_config->base.adjusted_mode.flags |= flags;
 if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
  pipe_config->pixel_multiplier =
   ((sdvox & SDVO_PORT_MULTIPLY_MASK)
    >> SDVO_PORT_MULTIPLY_SHIFT) + 1;
 }

 dotclock = pipe_config->port_clock;

 if (pipe_config->pixel_multiplier)
  dotclock /= pipe_config->pixel_multiplier;

 pipe_config->base.adjusted_mode.crtc_clock = dotclock;


 if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_CLOCK_RATE_MULT,
     &val, 1)) {
  switch (val) {
  case 130:
   encoder_pixel_multiplier = 1;
   break;
  case 129:
   encoder_pixel_multiplier = 2;
   break;
  case 128:
   encoder_pixel_multiplier = 4;
   break;
  }
 }

 WARN(encoder_pixel_multiplier != pipe_config->pixel_multiplier,
      "SDVO pixel multiplier mismatch, port: %i, encoder: %i\n",
      pipe_config->pixel_multiplier, encoder_pixel_multiplier);

 if (sdvox & HDMI_COLOR_RANGE_16_235)
  pipe_config->limited_color_range = 1;

 if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
     &val, 1)) {
  u8 mask = SDVO_AUDIO_ELD_VALID | SDVO_AUDIO_PRESENCE_DETECT;

  if ((val & mask) == mask)
   pipe_config->has_audio = 1;
 }

 if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_ENCODE,
     &val, 1)) {
  if (val == SDVO_ENCODE_HDMI)
   pipe_config->has_hdmi_sink = 1;
 }

 intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
}
