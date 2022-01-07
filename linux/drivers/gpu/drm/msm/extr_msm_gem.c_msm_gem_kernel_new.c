
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;


 void* _msm_gem_kernel_new (struct drm_device*,int ,int ,struct msm_gem_address_space*,struct drm_gem_object**,int *,int) ;

void *msm_gem_kernel_new(struct drm_device *dev, uint32_t size,
  uint32_t flags, struct msm_gem_address_space *aspace,
  struct drm_gem_object **bo, uint64_t *iova)
{
 return _msm_gem_kernel_new(dev, size, flags, aspace, bo, iova, 0);
}
