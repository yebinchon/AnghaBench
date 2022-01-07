
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int amdgpu_device_resume (struct drm_device*,int,int) ;
 struct drm_device* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int amdgpu_pmops_thaw(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 return amdgpu_device_resume(drm_dev, 0, 1);
}
