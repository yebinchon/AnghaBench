
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int qxl_drm_resume (struct drm_device*,int) ;

__attribute__((used)) static int qxl_pm_thaw(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 return qxl_drm_resume(drm_dev, 1);
}
