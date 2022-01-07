
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int kirin_drm_kms_cleanup (struct drm_device*) ;

__attribute__((used)) static void kirin_drm_unbind(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 drm_dev_unregister(drm_dev);
 kirin_drm_kms_cleanup(drm_dev);
 drm_dev_put(drm_dev);
}
