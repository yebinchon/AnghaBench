
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct i915_audio_component {int* aud_sample_rate; } ;
struct drm_i915_private {struct i915_audio_component* audio_component; } ;
struct dp_aud_n_m {int m; int n; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;


 int AUD_CONFIG_M_MASK ;
 int AUD_CONFIG_N (int ) ;
 int AUD_CONFIG_N_MASK ;
 int AUD_CONFIG_N_PROG_ENABLE ;
 int AUD_CONFIG_N_VALUE_INDEX ;
 int AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK ;
 int AUD_M_CTS_M_PROG_ENABLE ;
 int AUD_M_CTS_M_VALUE_INDEX ;
 int DRM_DEBUG_KMS (char*,...) ;
 int HSW_AUD_CFG (int) ;
 int HSW_AUD_M_CTS_ENABLE (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 struct dp_aud_n_m* audio_config_dp_get_n_m (struct intel_crtc_state const*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
hsw_dp_audio_config_update(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct i915_audio_component *acomp = dev_priv->audio_component;
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 enum port port = encoder->port;
 const struct dp_aud_n_m *nm;
 int rate;
 u32 tmp;

 rate = acomp ? acomp->aud_sample_rate[port] : 0;
 nm = audio_config_dp_get_n_m(crtc_state, rate);
 if (nm)
  DRM_DEBUG_KMS("using Maud %u, Naud %u\n", nm->m, nm->n);
 else
  DRM_DEBUG_KMS("using automatic Maud, Naud\n");

 tmp = I915_READ(HSW_AUD_CFG(cpu_transcoder));
 tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
 tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
 tmp |= AUD_CONFIG_N_VALUE_INDEX;

 if (nm) {
  tmp &= ~AUD_CONFIG_N_MASK;
  tmp |= AUD_CONFIG_N(nm->n);
  tmp |= AUD_CONFIG_N_PROG_ENABLE;
 }

 I915_WRITE(HSW_AUD_CFG(cpu_transcoder), tmp);

 tmp = I915_READ(HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
 tmp &= ~AUD_CONFIG_M_MASK;
 tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
 tmp &= ~AUD_M_CTS_M_PROG_ENABLE;

 if (nm) {
  tmp |= nm->m;
  tmp |= AUD_M_CTS_M_VALUE_INDEX;
  tmp |= AUD_M_CTS_M_PROG_ENABLE;
 }

 I915_WRITE(HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
}
