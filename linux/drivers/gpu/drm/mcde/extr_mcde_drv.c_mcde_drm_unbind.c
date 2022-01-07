
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;
struct device {int dummy; } ;


 int component_unbind_all (int ,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;

__attribute__((used)) static void mcde_drm_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);

 drm_dev_unregister(drm);
 drm_atomic_helper_shutdown(drm);
 component_unbind_all(drm->dev, drm);
}
