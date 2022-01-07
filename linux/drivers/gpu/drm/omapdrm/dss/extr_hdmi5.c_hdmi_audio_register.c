
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hdmi_audio_pdata {int version; int * ops; int audio_dma_addr; int * dev; } ;
struct TYPE_4__ {int base; } ;
struct omap_hdmi {TYPE_2__ wp; int wp_idlemode; int audio_pdev; TYPE_1__* pdev; } ;
typedef int pdata ;
struct TYPE_3__ {int dev; } ;


 int HDMI_WP_SYSCONFIG ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int REG_GET (int ,int ,int,int) ;
 int hdmi_audio_ops ;
 int hdmi_runtime_get (struct omap_hdmi*) ;
 int hdmi_runtime_put (struct omap_hdmi*) ;
 int hdmi_wp_get_audio_dma_addr (TYPE_2__*) ;
 int platform_device_register_data (int *,char*,int ,struct omap_hdmi_audio_pdata*,int) ;

__attribute__((used)) static int hdmi_audio_register(struct omap_hdmi *hdmi)
{
 struct omap_hdmi_audio_pdata pdata = {
  .dev = &hdmi->pdev->dev,
  .version = 5,
  .audio_dma_addr = hdmi_wp_get_audio_dma_addr(&hdmi->wp),
  .ops = &hdmi_audio_ops,
 };

 hdmi->audio_pdev = platform_device_register_data(
  &hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
  &pdata, sizeof(pdata));

 if (IS_ERR(hdmi->audio_pdev))
  return PTR_ERR(hdmi->audio_pdev);

 hdmi_runtime_get(hdmi);
 hdmi->wp_idlemode =
  REG_GET(hdmi->wp.base, HDMI_WP_SYSCONFIG, 3, 2);
 hdmi_runtime_put(hdmi);

 return 0;
}
