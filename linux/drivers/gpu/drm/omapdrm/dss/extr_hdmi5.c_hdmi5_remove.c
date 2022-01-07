
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_hdmi {int dummy; } ;


 int component_del (int *,int *) ;
 int hdmi5_component_ops ;
 int hdmi5_uninit_output (struct omap_hdmi*) ;
 int kfree (struct omap_hdmi*) ;
 struct omap_hdmi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int hdmi5_remove(struct platform_device *pdev)
{
 struct omap_hdmi *hdmi = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &hdmi5_component_ops);

 hdmi5_uninit_output(hdmi);

 pm_runtime_disable(&pdev->dev);

 kfree(hdmi);
 return 0;
}
