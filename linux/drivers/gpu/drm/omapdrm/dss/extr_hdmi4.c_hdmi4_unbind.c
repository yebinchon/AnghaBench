
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int pll; int core; scalar_t__ audio_pdev; int debugfs; } ;
struct device {int dummy; } ;


 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int dss_debugfs_remove_file (int ) ;
 int hdmi4_cec_uninit (int *) ;
 int hdmi_pll_uninit (int *) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static void hdmi4_unbind(struct device *dev, struct device *master, void *data)
{
 struct omap_hdmi *hdmi = dev_get_drvdata(dev);

 dss_debugfs_remove_file(hdmi->debugfs);

 if (hdmi->audio_pdev)
  platform_device_unregister(hdmi->audio_pdev);

 hdmi4_cec_uninit(&hdmi->core);
 hdmi_pll_uninit(&hdmi->pll);
}
