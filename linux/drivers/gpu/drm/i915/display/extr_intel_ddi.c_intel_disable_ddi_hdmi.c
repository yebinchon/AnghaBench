
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct TYPE_2__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int intel_audio_codec_disable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_hdmi_handle_sink_scrambling (struct intel_encoder*,struct drm_connector*,int,int) ;

__attribute__((used)) static void intel_disable_ddi_hdmi(struct intel_encoder *encoder,
       const struct intel_crtc_state *old_crtc_state,
       const struct drm_connector_state *old_conn_state)
{
 struct drm_connector *connector = old_conn_state->connector;

 if (old_crtc_state->has_audio)
  intel_audio_codec_disable(encoder,
       old_crtc_state, old_conn_state);

 if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
            0, 0))
  DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Failed to reset sink scrambling/TMDS bit clock ratio\n",
         connector->base.id, connector->name);
}
