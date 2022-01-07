
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hdmi_codec_pdata {int max_i2s_channels; int i2s; int * ops; } ;
struct device {int dummy; } ;
typedef int codec_data ;


 int DRM_INFO (char*,int ) ;
 int HDMI_CODEC_DRV_NAME ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PLATFORM_DEVID_AUTO ;
 int mtk_hdmi_audio_codec_ops ;
 struct platform_device* platform_device_register_data (struct device*,int ,int ,struct hdmi_codec_pdata*,int) ;

__attribute__((used)) static void mtk_hdmi_register_audio_driver(struct device *dev)
{
 struct hdmi_codec_pdata codec_data = {
  .ops = &mtk_hdmi_audio_codec_ops,
  .max_i2s_channels = 2,
  .i2s = 1,
 };
 struct platform_device *pdev;

 pdev = platform_device_register_data(dev, HDMI_CODEC_DRV_NAME,
          PLATFORM_DEVID_AUTO, &codec_data,
          sizeof(codec_data));
 if (IS_ERR(pdev))
  return;

 DRM_INFO("%s driver bound to HDMI\n", HDMI_CODEC_DRV_NAME);
}
