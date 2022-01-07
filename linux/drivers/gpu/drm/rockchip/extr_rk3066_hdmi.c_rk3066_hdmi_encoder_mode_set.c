
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3066_hdmi {int previous_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int memcpy (int *,struct drm_display_mode*,int) ;
 struct rk3066_hdmi* to_rk3066_hdmi (struct drm_encoder*) ;

__attribute__((used)) static void
rk3066_hdmi_encoder_mode_set(struct drm_encoder *encoder,
        struct drm_display_mode *mode,
        struct drm_display_mode *adj_mode)
{
 struct rk3066_hdmi *hdmi = to_rk3066_hdmi(encoder);


 memcpy(&hdmi->previous_mode, adj_mode, sizeof(hdmi->previous_mode));
}
