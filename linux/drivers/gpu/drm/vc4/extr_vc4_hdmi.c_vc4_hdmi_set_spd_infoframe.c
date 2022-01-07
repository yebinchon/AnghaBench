
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdi; } ;
union hdmi_infoframe {TYPE_1__ spd; } ;
struct drm_encoder {int dummy; } ;


 int DRM_ERROR (char*) ;
 int HDMI_SPD_SDI_PC ;
 int hdmi_spd_infoframe_init (TYPE_1__*,char*,char*) ;
 int vc4_hdmi_write_infoframe (struct drm_encoder*,union hdmi_infoframe*) ;

__attribute__((used)) static void vc4_hdmi_set_spd_infoframe(struct drm_encoder *encoder)
{
 union hdmi_infoframe frame;
 int ret;

 ret = hdmi_spd_infoframe_init(&frame.spd, "Broadcom", "Videocore");
 if (ret < 0) {
  DRM_ERROR("couldn't fill SPD infoframe\n");
  return;
 }

 frame.spd.sdi = HDMI_SPD_SDI_PC;

 vc4_hdmi_write_infoframe(encoder, &frame);
}
