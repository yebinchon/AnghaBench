
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_sdvo {int sdvo_reg; } ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {scalar_t__ has_audio; TYPE_2__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int PIPE_A ;
 scalar_t__ PIPE_B ;
 int SDVO_ENABLE ;
 int SDVO_PIPE_SEL (int ) ;
 int SDVO_PIPE_SEL_MASK ;
 int intel_sdvo_disable_audio (struct intel_sdvo*) ;
 int intel_sdvo_set_active_outputs (struct intel_sdvo*,int ) ;
 int intel_sdvo_set_encoder_power_state (struct intel_sdvo*,int ) ;
 int intel_sdvo_write_sdvox (struct intel_sdvo*,int) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int intel_wait_for_vblank_if_active (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 struct intel_sdvo* to_sdvo (struct intel_encoder*) ;

__attribute__((used)) static void intel_disable_sdvo(struct intel_encoder *encoder,
          const struct intel_crtc_state *old_crtc_state,
          const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 u32 temp;

 if (old_crtc_state->has_audio)
  intel_sdvo_disable_audio(intel_sdvo);

 intel_sdvo_set_active_outputs(intel_sdvo, 0);
 if (0)
  intel_sdvo_set_encoder_power_state(intel_sdvo,
         DRM_MODE_DPMS_OFF);

 temp = I915_READ(intel_sdvo->sdvo_reg);

 temp &= ~SDVO_ENABLE;
 intel_sdvo_write_sdvox(intel_sdvo, temp);






 if (HAS_PCH_IBX(dev_priv) && crtc->pipe == PIPE_B) {




  intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, 0);
  intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, 0);

  temp &= ~SDVO_PIPE_SEL_MASK;
  temp |= SDVO_ENABLE | SDVO_PIPE_SEL(PIPE_A);
  intel_sdvo_write_sdvox(intel_sdvo, temp);

  temp &= ~SDVO_ENABLE;
  intel_sdvo_write_sdvox(intel_sdvo, temp);

  intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
  intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, 1);
  intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, 1);
 }
}
