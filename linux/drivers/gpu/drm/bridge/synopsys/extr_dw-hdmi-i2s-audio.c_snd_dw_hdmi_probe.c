
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_info {int size_data; int dma_mask; struct hdmi_codec_pdata* data; int name; int id; int parent; } ;
struct TYPE_2__ {int parent; struct dw_hdmi_i2s_audio_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdmi_codec_pdata {int i2s; int max_i2s_channels; struct dw_hdmi_i2s_audio_data* data; int * ops; } ;
struct dw_hdmi_i2s_audio_data {int dummy; } ;
typedef int pdevinfo ;
typedef int pdata ;


 int DMA_BIT_MASK (int) ;
 int HDMI_CODEC_DRV_NAME ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (struct platform_device*) ;
 int dev_set_drvdata (TYPE_1__*,struct platform_device*) ;
 int dw_hdmi_i2s_ops ;
 int memset (struct platform_device_info*,int ,int) ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;

__attribute__((used)) static int snd_dw_hdmi_probe(struct platform_device *pdev)
{
 struct dw_hdmi_i2s_audio_data *audio = pdev->dev.platform_data;
 struct platform_device_info pdevinfo;
 struct hdmi_codec_pdata pdata;
 struct platform_device *platform;

 pdata.ops = &dw_hdmi_i2s_ops;
 pdata.i2s = 1;
 pdata.max_i2s_channels = 8;
 pdata.data = audio;

 memset(&pdevinfo, 0, sizeof(pdevinfo));
 pdevinfo.parent = pdev->dev.parent;
 pdevinfo.id = PLATFORM_DEVID_AUTO;
 pdevinfo.name = HDMI_CODEC_DRV_NAME;
 pdevinfo.data = &pdata;
 pdevinfo.size_data = sizeof(pdata);
 pdevinfo.dma_mask = DMA_BIT_MASK(32);

 platform = platform_device_register_full(&pdevinfo);
 if (IS_ERR(platform))
  return PTR_ERR(platform);

 dev_set_drvdata(&pdev->dev, platform);

 return 0;
}
