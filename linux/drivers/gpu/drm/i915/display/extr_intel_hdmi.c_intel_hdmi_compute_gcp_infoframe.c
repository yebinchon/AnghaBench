
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_6__ {int gcp; int enable; } ;
struct TYPE_4__ {int adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; TYPE_3__ infoframes; TYPE_1__ base; int has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int GCP_COLOR_INDICATION ;
 int GCP_DEFAULT_PHASE_ENABLE ;
 int HDMI_PACKET_TYPE_GENERAL_CONTROL ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ gcp_default_phase_possible (int,int *) ;
 int intel_hdmi_infoframe_enable (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_hdmi_compute_gcp_infoframe(struct intel_encoder *encoder,
          struct intel_crtc_state *crtc_state,
          struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 if (IS_G4X(dev_priv) || !crtc_state->has_infoframe)
  return;

 crtc_state->infoframes.enable |=
  intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL);


 if (crtc_state->pipe_bpp > 24)
  crtc_state->infoframes.gcp |= GCP_COLOR_INDICATION;


 if (gcp_default_phase_possible(crtc_state->pipe_bpp,
           &crtc_state->base.adjusted_mode))
  crtc_state->infoframes.gcp |= GCP_DEFAULT_PHASE_ENABLE;
}
