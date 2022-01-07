
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl111_drm_dev_private {int bridge; scalar_t__ panel; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct device {int dummy; } ;
struct amba_device {struct device dev; } ;


 struct drm_device* amba_get_drvdata (struct amba_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_panel_bridge_remove (int ) ;
 int of_reserved_mem_device_release (struct device*) ;

__attribute__((used)) static int pl111_amba_remove(struct amba_device *amba_dev)
{
 struct device *dev = &amba_dev->dev;
 struct drm_device *drm = amba_get_drvdata(amba_dev);
 struct pl111_drm_dev_private *priv = drm->dev_private;

 drm_dev_unregister(drm);
 if (priv->panel)
  drm_panel_bridge_remove(priv->bridge);
 drm_mode_config_cleanup(drm);
 drm_dev_put(drm);
 of_reserved_mem_device_release(dev);

 return 0;
}
