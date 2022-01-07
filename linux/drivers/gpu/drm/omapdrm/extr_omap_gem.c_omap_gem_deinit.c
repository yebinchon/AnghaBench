
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int usergart; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;


 int kfree (int ) ;

void omap_gem_deinit(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;




 kfree(priv->usergart);
}
