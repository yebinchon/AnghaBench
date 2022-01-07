
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {scalar_t__ sink_is_hdmi; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 struct zx_hdmi* to_zx_hdmi (struct drm_encoder*) ;
 int zx_hdmi_config_video_avi (struct zx_hdmi*,struct drm_display_mode*) ;
 int zx_hdmi_config_video_vsi (struct zx_hdmi*,struct drm_display_mode*) ;

__attribute__((used)) static void zx_hdmi_encoder_mode_set(struct drm_encoder *encoder,
         struct drm_display_mode *mode,
         struct drm_display_mode *adj_mode)
{
 struct zx_hdmi *hdmi = to_zx_hdmi(encoder);

 if (hdmi->sink_is_hdmi) {
  zx_hdmi_config_video_avi(hdmi, mode);
  zx_hdmi_config_video_vsi(hdmi, mode);
 }
}
