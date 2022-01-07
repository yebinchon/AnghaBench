
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct sti_hdmi {int audio_pdev; TYPE_1__ audio; } ;
struct hdmi_codec_pdata {int max_i2s_channels; int i2s; int * ops; } ;
struct device {int dummy; } ;
typedef int codec_data ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_INFO (char*,int ,int ) ;
 int HDMI_CODEC_DRV_NAME ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int audio_codec_ops ;
 int dev_name (struct device*) ;
 int platform_device_register_data (struct device*,int ,int ,struct hdmi_codec_pdata*,int) ;

__attribute__((used)) static int sti_hdmi_register_audio_driver(struct device *dev,
       struct sti_hdmi *hdmi)
{
 struct hdmi_codec_pdata codec_data = {
  .ops = &audio_codec_ops,
  .max_i2s_channels = 8,
  .i2s = 1,
 };

 DRM_DEBUG_DRIVER("\n");

 hdmi->audio.enabled = 0;

 hdmi->audio_pdev = platform_device_register_data(
  dev, HDMI_CODEC_DRV_NAME, PLATFORM_DEVID_AUTO,
  &codec_data, sizeof(codec_data));

 if (IS_ERR(hdmi->audio_pdev))
  return PTR_ERR(hdmi->audio_pdev);

 DRM_INFO("%s Driver bound %s\n", HDMI_CODEC_DRV_NAME, dev_name(dev));

 return 0;
}
