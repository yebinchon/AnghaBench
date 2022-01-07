
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int NORMAL ;
 int inno_hdmi_set_pwr_mode (struct inno_hdmi*,int ) ;
 struct inno_hdmi* to_inno_hdmi (struct drm_encoder*) ;

__attribute__((used)) static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
{
 struct inno_hdmi *hdmi = to_inno_hdmi(encoder);

 inno_hdmi_set_pwr_mode(hdmi, NORMAL);
}
