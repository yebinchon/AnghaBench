
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_hdmi {TYPE_1__* pdev; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HDMI_INFOFRAME_TYPE_AUDIO ;
 int HD_WRITE (int ,int ) ;
 int VC4_HD_MAI_CTL ;
 int VC4_HD_MAI_CTL_ERRORF ;
 int VC4_HD_MAI_CTL_FLUSH ;
 int VC4_HD_MAI_CTL_RESET ;
 int dev_err (struct device*,char*,int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_hdmi_stop_packet (struct drm_encoder*,int ) ;

__attribute__((used)) static void vc4_hdmi_audio_reset(struct vc4_hdmi *hdmi)
{
 struct drm_encoder *encoder = hdmi->encoder;
 struct drm_device *drm = encoder->dev;
 struct device *dev = &hdmi->pdev->dev;
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 int ret;

 ret = vc4_hdmi_stop_packet(encoder, HDMI_INFOFRAME_TYPE_AUDIO);
 if (ret)
  dev_err(dev, "Failed to stop audio infoframe: %d\n", ret);

 HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_RESET);
 HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_ERRORF);
 HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_FLUSH);
}
