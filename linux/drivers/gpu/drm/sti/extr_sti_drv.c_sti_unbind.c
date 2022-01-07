
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int sti_cleanup (struct drm_device*) ;

__attribute__((used)) static void sti_unbind(struct device *dev)
{
 struct drm_device *ddev = dev_get_drvdata(dev);

 drm_dev_unregister(ddev);
 sti_cleanup(ddev);
 drm_dev_put(ddev);
}
