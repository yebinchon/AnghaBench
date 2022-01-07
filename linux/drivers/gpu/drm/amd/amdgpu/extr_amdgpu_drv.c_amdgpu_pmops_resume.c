
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ amdgpu_device_is_px (struct drm_device*) ;
 int amdgpu_device_resume (struct drm_device*,int,int) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;

__attribute__((used)) static int amdgpu_pmops_resume(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);


 if (amdgpu_device_is_px(drm_dev)) {
  pm_runtime_disable(dev);
  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);
 }

 return amdgpu_device_resume(drm_dev, 1, 1);
}
