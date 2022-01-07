
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int dev; } ;
struct intel_encoder {scalar_t__ type; TYPE_1__ base; } ;
struct TYPE_12__ {int drm; int hdmi; int spd; int avi; int enable; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_2__ adjusted_mode; int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; int has_hdmi_sink; int has_infoframe; int hdmi_scrambling; int hdmi_high_tmds_clock_ratio; int lane_count; TYPE_6__ infoframes; int lane_lat_optim_mask; int has_audio; int output_types; TYPE_3__ base; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_10__ {scalar_t__ bpp; } ;
struct TYPE_11__ {TYPE_4__ edp; } ;
struct drm_i915_private {TYPE_5__ vbt; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int BIT (scalar_t__) ;
 int DDI_PORT_WIDTH_MASK ;
 int DDI_PORT_WIDTH_SHIFT ;
 int DRM_DEBUG_KMS (char*,scalar_t__,scalar_t__) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int HDMI_INFOFRAME_TYPE_AVI ;
 int HDMI_INFOFRAME_TYPE_DRM ;
 int HDMI_INFOFRAME_TYPE_SPD ;
 int HDMI_INFOFRAME_TYPE_VENDOR ;
 int I915_READ (int ) ;
 scalar_t__ INTEL_OUTPUT_ANALOG ;
 scalar_t__ INTEL_OUTPUT_DP ;
 scalar_t__ INTEL_OUTPUT_DP_MST ;
 scalar_t__ INTEL_OUTPUT_EDP ;
 scalar_t__ INTEL_OUTPUT_HDMI ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;




 int TRANS_DDI_BPC_MASK ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_HDMI_SCRAMBLING ;
 int TRANS_DDI_HIGH_TMDS_CHAR_RATE ;





 int TRANS_DDI_MODE_SELECT_MASK ;
 int TRANS_DDI_PHSYNC ;
 int TRANS_DDI_PVSYNC ;
 scalar_t__ WARN_ON (int ) ;
 int bxt_ddi_phy_get_lane_lat_optim_mask (struct intel_encoder*) ;
 int intel_ddi_clock_get (struct intel_encoder*,struct intel_crtc_state*) ;
 int intel_ddi_compute_min_voltage_level (struct drm_i915_private*,struct intel_crtc_state*) ;
 int intel_ddi_is_audio_enabled (struct drm_i915_private*,int) ;
 int intel_dp_get_m_n (struct intel_crtc*,struct intel_crtc_state*) ;
 int intel_hdmi_infoframes_enabled (struct intel_encoder*,struct intel_crtc_state*) ;
 int intel_hdmi_read_gcp_infoframe (struct intel_encoder*,struct intel_crtc_state*) ;
 int intel_read_infoframe (struct intel_encoder*,struct intel_crtc_state*,int ,int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int transcoder_is_dsi (int) ;

void intel_ddi_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->base.crtc);
 enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 u32 temp, flags = 0;


 if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
  return;

 temp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
 if (temp & TRANS_DDI_PHSYNC)
  flags |= DRM_MODE_FLAG_PHSYNC;
 else
  flags |= DRM_MODE_FLAG_NHSYNC;
 if (temp & TRANS_DDI_PVSYNC)
  flags |= DRM_MODE_FLAG_PVSYNC;
 else
  flags |= DRM_MODE_FLAG_NVSYNC;

 pipe_config->base.adjusted_mode.flags |= flags;

 switch (temp & TRANS_DDI_BPC_MASK) {
 case 134:
  pipe_config->pipe_bpp = 18;
  break;
 case 133:
  pipe_config->pipe_bpp = 24;
  break;
 case 136:
  pipe_config->pipe_bpp = 30;
  break;
 case 135:
  pipe_config->pipe_bpp = 36;
  break;
 default:
  break;
 }

 switch (temp & TRANS_DDI_MODE_SELECT_MASK) {
 case 128:
  pipe_config->has_hdmi_sink = 1;

  pipe_config->infoframes.enable |=
   intel_hdmi_infoframes_enabled(encoder, pipe_config);

  if (pipe_config->infoframes.enable)
   pipe_config->has_infoframe = 1;

  if (temp & TRANS_DDI_HDMI_SCRAMBLING)
   pipe_config->hdmi_scrambling = 1;
  if (temp & TRANS_DDI_HIGH_TMDS_CHAR_RATE)
   pipe_config->hdmi_high_tmds_clock_ratio = 1;

 case 130:
  pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
  pipe_config->lane_count = 4;
  break;
 case 129:
  pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
  break;
 case 131:
  if (encoder->type == INTEL_OUTPUT_EDP)
   pipe_config->output_types |= BIT(INTEL_OUTPUT_EDP);
  else
   pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
  pipe_config->lane_count =
   ((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
  intel_dp_get_m_n(intel_crtc, pipe_config);
  break;
 case 132:
  pipe_config->output_types |= BIT(INTEL_OUTPUT_DP_MST);
  pipe_config->lane_count =
   ((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
  intel_dp_get_m_n(intel_crtc, pipe_config);
  break;
 default:
  break;
 }

 pipe_config->has_audio =
  intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);

 if (encoder->type == INTEL_OUTPUT_EDP && dev_priv->vbt.edp.bpp &&
     pipe_config->pipe_bpp > dev_priv->vbt.edp.bpp) {
  DRM_DEBUG_KMS("pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
         pipe_config->pipe_bpp, dev_priv->vbt.edp.bpp);
  dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
 }

 intel_ddi_clock_get(encoder, pipe_config);

 if (IS_GEN9_LP(dev_priv))
  pipe_config->lane_lat_optim_mask =
   bxt_ddi_phy_get_lane_lat_optim_mask(encoder);

 intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);

 intel_hdmi_read_gcp_infoframe(encoder, pipe_config);

 intel_read_infoframe(encoder, pipe_config,
        HDMI_INFOFRAME_TYPE_AVI,
        &pipe_config->infoframes.avi);
 intel_read_infoframe(encoder, pipe_config,
        HDMI_INFOFRAME_TYPE_SPD,
        &pipe_config->infoframes.spd);
 intel_read_infoframe(encoder, pipe_config,
        HDMI_INFOFRAME_TYPE_VENDOR,
        &pipe_config->infoframes.hdmi);
 intel_read_infoframe(encoder, pipe_config,
        HDMI_INFOFRAME_TYPE_DRM,
        &pipe_config->infoframes.drm);
}
