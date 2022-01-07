
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int crtc; } ;
struct zx_hdmi {struct drm_encoder encoder; } ;
struct device {int dummy; } ;


 int VOU_HDMI_AUD_SPDIF ;
 struct zx_hdmi* dev_get_drvdata (struct device*) ;
 int vou_inf_hdmi_audio_sel (int ,int ) ;

__attribute__((used)) static int zx_hdmi_audio_startup(struct device *dev, void *data)
{
 struct zx_hdmi *hdmi = dev_get_drvdata(dev);
 struct drm_encoder *encoder = &hdmi->encoder;

 vou_inf_hdmi_audio_sel(encoder->crtc, VOU_HDMI_AUD_SPDIF);

 return 0;
}
