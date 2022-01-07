
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_codec_pdata {int i2s; int spdif; int max_i2s_channels; int * ops; } ;
struct device {int dummy; } ;
struct cdn_dp_device {int audio_pdev; } ;
typedef int codec_data ;


 int HDMI_CODEC_DRV_NAME ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR_OR_ZERO (int ) ;
 int audio_codec_ops ;
 int platform_device_register_data (struct device*,int ,int ,struct hdmi_codec_pdata*,int) ;

__attribute__((used)) static int cdn_dp_audio_codec_init(struct cdn_dp_device *dp,
       struct device *dev)
{
 struct hdmi_codec_pdata codec_data = {
  .i2s = 1,
  .spdif = 1,
  .ops = &audio_codec_ops,
  .max_i2s_channels = 8,
 };

 dp->audio_pdev = platform_device_register_data(
    dev, HDMI_CODEC_DRV_NAME, PLATFORM_DEVID_AUTO,
    &codec_data, sizeof(codec_data));

 return PTR_ERR_OR_ZERO(dp->audio_pdev);
}
