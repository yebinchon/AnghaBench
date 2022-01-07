
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int qxl_drm_freeze (struct drm_device*) ;

__attribute__((used)) static int qxl_pm_freeze(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 return qxl_drm_freeze(drm_dev);
}
