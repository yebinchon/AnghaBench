
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;


 int hsw_dp_audio_config_update (struct intel_encoder*,struct intel_crtc_state const*) ;
 int hsw_hdmi_audio_config_update (struct intel_encoder*,struct intel_crtc_state const*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;

__attribute__((used)) static void
hsw_audio_config_update(struct intel_encoder *encoder,
   const struct intel_crtc_state *crtc_state)
{
 if (intel_crtc_has_dp_encoder(crtc_state))
  hsw_dp_audio_config_update(encoder, crtc_state);
 else
  hsw_hdmi_audio_config_update(encoder, crtc_state);
}
