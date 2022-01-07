
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct hdmi_drm_infoframe {int dummy; } ;
struct TYPE_4__ {struct hdmi_drm_infoframe drm; } ;
struct TYPE_5__ {int enable; TYPE_1__ drm; } ;
struct intel_crtc_state {TYPE_2__ infoframes; int has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int hdr_output_metadata; } ;


 int DRM_DEBUG_KMS (char*) ;
 int HDMI_INFOFRAME_TYPE_DRM ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ WARN_ON (int) ;
 int drm_hdmi_infoframe_set_hdr_metadata (struct hdmi_drm_infoframe*,struct drm_connector_state*) ;
 int hdmi_drm_infoframe_check (struct hdmi_drm_infoframe*) ;
 int intel_hdmi_infoframe_enable (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
     struct intel_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 struct hdmi_drm_infoframe *frame = &crtc_state->infoframes.drm.drm;
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 int ret;

 if (!(INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
  return 1;

 if (!crtc_state->has_infoframe)
  return 1;

 if (!conn_state->hdr_output_metadata)
  return 1;

 crtc_state->infoframes.enable |=
  intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM);

 ret = drm_hdmi_infoframe_set_hdr_metadata(frame, conn_state);
 if (ret < 0) {
  DRM_DEBUG_KMS("couldn't set HDR metadata in infoframe\n");
  return 0;
 }

 ret = hdmi_drm_infoframe_check(frame);
 if (WARN_ON(ret))
  return 0;

 return 1;
}
