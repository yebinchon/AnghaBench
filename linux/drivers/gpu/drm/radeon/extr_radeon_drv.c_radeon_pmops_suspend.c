
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int radeon_suspend_kms (struct drm_device*,int,int,int) ;

__attribute__((used)) static int radeon_pmops_suspend(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);
 return radeon_suspend_kms(drm_dev, 1, 1, 0);
}
