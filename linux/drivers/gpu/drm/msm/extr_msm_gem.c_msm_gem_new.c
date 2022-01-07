
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_gem_object* _msm_gem_new (struct drm_device*,int ,int ,int) ;

struct drm_gem_object *msm_gem_new(struct drm_device *dev,
  uint32_t size, uint32_t flags)
{
 return _msm_gem_new(dev, size, flags, 0);
}
