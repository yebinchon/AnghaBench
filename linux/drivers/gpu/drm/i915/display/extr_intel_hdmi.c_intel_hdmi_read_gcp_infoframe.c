
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_4__ {int enable; int gcp; } ;
struct TYPE_6__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ infoframes; int cpu_transcoder; TYPE_3__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int HDMI_PACKET_TYPE_GENERAL_CONTROL ;
 int HSW_TVIDEO_DIP_GCP (int ) ;
 int I915_READ (int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int TVIDEO_DIP_GCP (int ) ;
 int VLV_TVIDEO_DIP_GCP (int ) ;
 int intel_hdmi_infoframe_enable (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
       struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 i915_reg_t reg;

 if ((crtc_state->infoframes.enable &
      intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
  return;

 if (HAS_DDI(dev_priv))
  reg = HSW_TVIDEO_DIP_GCP(crtc_state->cpu_transcoder);
 else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 else if (HAS_PCH_SPLIT(dev_priv))
  reg = TVIDEO_DIP_GCP(crtc->pipe);
 else
  return;

 crtc_state->infoframes.gcp = I915_READ(reg);
}
