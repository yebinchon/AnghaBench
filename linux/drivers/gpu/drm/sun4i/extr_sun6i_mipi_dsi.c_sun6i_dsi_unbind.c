
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int panel; } ;
struct device {int dummy; } ;


 struct sun6i_dsi* dev_get_drvdata (struct device*) ;
 int drm_panel_detach (int ) ;

__attribute__((used)) static void sun6i_dsi_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct sun6i_dsi *dsi = dev_get_drvdata(dev);

 drm_panel_detach(dsi->panel);
}
