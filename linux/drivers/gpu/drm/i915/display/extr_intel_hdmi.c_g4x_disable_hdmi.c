
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_connector_state {int dummy; } ;


 int intel_audio_codec_disable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_disable_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;

__attribute__((used)) static void g4x_disable_hdmi(struct intel_encoder *encoder,
        const struct intel_crtc_state *old_crtc_state,
        const struct drm_connector_state *old_conn_state)
{
 if (old_crtc_state->has_audio)
  intel_audio_codec_disable(encoder,
       old_crtc_state, old_conn_state);

 intel_disable_hdmi(encoder, old_crtc_state, old_conn_state);
}
