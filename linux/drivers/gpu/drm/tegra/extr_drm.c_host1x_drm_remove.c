
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_device {int dev; } ;
struct drm_device {int dummy; } ;


 struct drm_device* dev_get_drvdata (int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;

__attribute__((used)) static int host1x_drm_remove(struct host1x_device *dev)
{
 struct drm_device *drm = dev_get_drvdata(&dev->dev);

 drm_dev_unregister(drm);
 drm_dev_put(drm);

 return 0;
}
