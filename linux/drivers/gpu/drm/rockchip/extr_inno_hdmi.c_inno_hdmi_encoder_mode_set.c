
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int previous_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int inno_hdmi_setup (struct inno_hdmi*,struct drm_display_mode*) ;
 int memcpy (int *,struct drm_display_mode*,int) ;
 struct inno_hdmi* to_inno_hdmi (struct drm_encoder*) ;

__attribute__((used)) static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
           struct drm_display_mode *mode,
           struct drm_display_mode *adj_mode)
{
 struct inno_hdmi *hdmi = to_inno_hdmi(encoder);

 inno_hdmi_setup(hdmi, adj_mode);


 memcpy(&hdmi->previous_mode, adj_mode, sizeof(hdmi->previous_mode));
}
