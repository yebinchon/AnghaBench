
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_2__ {int crtc; } ;
struct intel_crtc_state {int has_hdmi_sink; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int WARN_ON (int) ;
 int intel_audio_codec_enable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int pipe_name (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
        const struct intel_crtc_state *pipe_config,
        const struct drm_connector_state *conn_state)
{
 struct intel_crtc *crtc = to_intel_crtc(pipe_config->base.crtc);

 WARN_ON(!pipe_config->has_hdmi_sink);
 DRM_DEBUG_DRIVER("Enabling HDMI audio on pipe %c\n",
    pipe_name(crtc->pipe));
 intel_audio_codec_enable(encoder, pipe_config, conn_state);
}
