
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {scalar_t__ gpu_cx; scalar_t__ gpu_reg; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int enable_pwrrail(struct msm_gpu *gpu)
{
 struct drm_device *dev = gpu->dev;
 int ret = 0;

 if (gpu->gpu_reg) {
  ret = regulator_enable(gpu->gpu_reg);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to enable 'gpu_reg': %d\n", ret);
   return ret;
  }
 }

 if (gpu->gpu_cx) {
  ret = regulator_enable(gpu->gpu_cx);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to enable 'gpu_cx': %d\n", ret);
   return ret;
  }
 }

 return 0;
}
