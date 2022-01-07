
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_parallel_display {int edid; scalar_t__ panel; } ;
struct device {int dummy; } ;


 struct imx_parallel_display* dev_get_drvdata (struct device*) ;
 int drm_panel_detach (scalar_t__) ;
 int kfree (int ) ;

__attribute__((used)) static void imx_pd_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct imx_parallel_display *imxpd = dev_get_drvdata(dev);

 if (imxpd->panel)
  drm_panel_detach(imxpd->panel);

 kfree(imxpd->edid);
}
