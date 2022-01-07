
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_sdvo {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int* eld; } ;


 int SDVO_AUDIO_ELD_VALID ;
 int SDVO_AUDIO_PRESENCE_DETECT ;
 int SDVO_HBUF_INDEX_ELD ;
 int SDVO_HBUF_TX_DISABLED ;
 int drm_av_sync_delay (struct drm_connector*,struct drm_display_mode const*) ;
 int drm_eld_size (int*) ;
 int intel_sdvo_set_audio_state (struct intel_sdvo*,int) ;
 int intel_sdvo_write_infoframe (struct intel_sdvo*,int ,int ,int*,int ) ;

__attribute__((used)) static void intel_sdvo_enable_audio(struct intel_sdvo *intel_sdvo,
        const struct intel_crtc_state *crtc_state,
        const struct drm_connector_state *conn_state)
{
 const struct drm_display_mode *adjusted_mode =
  &crtc_state->base.adjusted_mode;
 struct drm_connector *connector = conn_state->connector;
 u8 *eld = connector->eld;

 eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;

 intel_sdvo_set_audio_state(intel_sdvo, 0);

 intel_sdvo_write_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
       SDVO_HBUF_TX_DISABLED,
       eld, drm_eld_size(eld));

 intel_sdvo_set_audio_state(intel_sdvo, SDVO_AUDIO_ELD_VALID |
       SDVO_AUDIO_PRESENCE_DETECT);
}
