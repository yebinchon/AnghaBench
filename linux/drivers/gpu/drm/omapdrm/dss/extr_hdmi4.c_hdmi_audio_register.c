
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hdmi_audio_pdata {int version; int * ops; int audio_dma_addr; int * dev; } ;
struct omap_hdmi {int audio_pdev; TYPE_1__* pdev; int wp; } ;
typedef int pdata ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int hdmi_audio_ops ;
 int hdmi_wp_get_audio_dma_addr (int *) ;
 int platform_device_register_data (int *,char*,int ,struct omap_hdmi_audio_pdata*,int) ;

__attribute__((used)) static int hdmi_audio_register(struct omap_hdmi *hdmi)
{
 struct omap_hdmi_audio_pdata pdata = {
  .dev = &hdmi->pdev->dev,
  .version = 4,
  .audio_dma_addr = hdmi_wp_get_audio_dma_addr(&hdmi->wp),
  .ops = &hdmi_audio_ops,
 };

 hdmi->audio_pdev = platform_device_register_data(
  &hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
  &pdata, sizeof(pdata));

 if (IS_ERR(hdmi->audio_pdev))
  return PTR_ERR(hdmi->audio_pdev);

 return 0;
}
