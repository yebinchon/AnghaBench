
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct hdmi_context {TYPE_1__ audio; int dev; } ;
struct hdmi_codec_pdata {int max_i2s_channels; int i2s; int * ops; } ;
typedef int codec_data ;


 int HDMI_CODEC_DRV_NAME ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR_OR_ZERO (int ) ;
 int audio_codec_ops ;
 int platform_device_register_data (int ,int ,int ,struct hdmi_codec_pdata*,int) ;

__attribute__((used)) static int hdmi_register_audio_device(struct hdmi_context *hdata)
{
 struct hdmi_codec_pdata codec_data = {
  .ops = &audio_codec_ops,
  .max_i2s_channels = 6,
  .i2s = 1,
 };

 hdata->audio.pdev = platform_device_register_data(
  hdata->dev, HDMI_CODEC_DRV_NAME, PLATFORM_DEVID_AUTO,
  &codec_data, sizeof(codec_data));

 return PTR_ERR_OR_ZERO(hdata->audio.pdev);
}
