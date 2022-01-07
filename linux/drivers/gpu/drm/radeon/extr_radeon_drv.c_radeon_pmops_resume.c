
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 scalar_t__ radeon_is_px (struct drm_device*) ;
 int radeon_resume_kms (struct drm_device*,int,int) ;

__attribute__((used)) static int radeon_pmops_resume(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);


 if (radeon_is_px(drm_dev)) {
  pm_runtime_disable(dev);
  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);
 }

 return radeon_resume_kms(drm_dev, 1, 1);
}
