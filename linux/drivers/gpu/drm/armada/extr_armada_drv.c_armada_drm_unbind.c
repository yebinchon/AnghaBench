
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct armada_private* dev_private; } ;
struct device {int dummy; } ;
struct armada_private {int drm; int linear; } ;


 int armada_fbdev_fini (int *) ;
 int component_unbind_all (struct device*,int *) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_atomic_helper_shutdown (int *) ;
 int drm_dev_put (int *) ;
 int drm_dev_unregister (int *) ;
 int drm_kms_helper_poll_fini (int *) ;
 int drm_mm_takedown (int *) ;
 int drm_mode_config_cleanup (int *) ;

__attribute__((used)) static void armada_drm_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct armada_private *priv = drm->dev_private;

 drm_kms_helper_poll_fini(&priv->drm);
 armada_fbdev_fini(&priv->drm);

 drm_dev_unregister(&priv->drm);

 drm_atomic_helper_shutdown(&priv->drm);

 component_unbind_all(dev, &priv->drm);

 drm_mode_config_cleanup(&priv->drm);
 drm_mm_takedown(&priv->linear);

 drm_dev_put(&priv->drm);
}
