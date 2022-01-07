
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int AUD_CONFIG_LOWER_N_MASK ;
 int AUD_CONFIG_N_PROG_ENABLE ;
 int AUD_CONFIG_N_VALUE_INDEX ;
 int AUD_CONFIG_UPPER_N_MASK ;
 int CPT_AUD_CFG (int) ;
 int CPT_AUD_CNTRL_ST2 ;
 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int IBX_AUD_CFG (int) ;
 int IBX_AUD_CNTL_ST2 ;
 int IBX_ELD_VALID (int) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_A ;
 int VLV_AUD_CFG (int) ;
 int VLV_AUD_CNTL_ST2 ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 int pipe_name (int) ;
 int port_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ilk_audio_codec_disable(struct intel_encoder *encoder,
        const struct intel_crtc_state *old_crtc_state,
        const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 enum pipe pipe = crtc->pipe;
 enum port port = encoder->port;
 u32 tmp, eldv;
 i915_reg_t aud_config, aud_cntrl_st2;

 DRM_DEBUG_KMS("Disable audio codec on port %c, pipe %c\n",
        port_name(port), pipe_name(pipe));

 if (WARN_ON(port == PORT_A))
  return;

 if (HAS_PCH_IBX(dev_priv)) {
  aud_config = IBX_AUD_CFG(pipe);
  aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
 } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  aud_config = VLV_AUD_CFG(pipe);
  aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
 } else {
  aud_config = CPT_AUD_CFG(pipe);
  aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
 }


 tmp = I915_READ(aud_config);
 tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 tmp |= AUD_CONFIG_N_PROG_ENABLE;
 tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 if (intel_crtc_has_dp_encoder(old_crtc_state))
  tmp |= AUD_CONFIG_N_VALUE_INDEX;
 I915_WRITE(aud_config, tmp);

 eldv = IBX_ELD_VALID(port);


 tmp = I915_READ(aud_cntrl_st2);
 tmp &= ~eldv;
 I915_WRITE(aud_cntrl_st2, tmp);
}
