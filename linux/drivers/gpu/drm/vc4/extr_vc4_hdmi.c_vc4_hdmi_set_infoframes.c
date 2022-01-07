
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int vc4_hdmi_set_avi_infoframe (struct drm_encoder*) ;
 int vc4_hdmi_set_spd_infoframe (struct drm_encoder*) ;

__attribute__((used)) static void vc4_hdmi_set_infoframes(struct drm_encoder *encoder)
{
 vc4_hdmi_set_avi_infoframe(encoder);
 vc4_hdmi_set_spd_infoframe(encoder);
}
