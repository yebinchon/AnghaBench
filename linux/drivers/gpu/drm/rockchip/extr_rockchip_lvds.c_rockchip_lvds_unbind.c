
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_lvds {int encoder; int connector; scalar_t__ panel; } ;
struct device {int dummy; } ;


 struct rockchip_lvds* dev_get_drvdata (struct device*) ;
 int drm_connector_cleanup (int *) ;
 int drm_encoder_cleanup (int *) ;
 int drm_panel_detach (scalar_t__) ;
 int pm_runtime_disable (struct device*) ;
 int rockchip_lvds_encoder_disable (int *) ;

__attribute__((used)) static void rockchip_lvds_unbind(struct device *dev, struct device *master,
    void *data)
{
 struct rockchip_lvds *lvds = dev_get_drvdata(dev);

 rockchip_lvds_encoder_disable(&lvds->encoder);
 if (lvds->panel)
  drm_panel_detach(lvds->panel);
 pm_runtime_disable(dev);
 drm_connector_cleanup(&lvds->connector);
 drm_encoder_cleanup(&lvds->encoder);
}
