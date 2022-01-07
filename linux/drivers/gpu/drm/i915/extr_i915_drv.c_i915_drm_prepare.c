
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_gem_suspend (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static int i915_drm_prepare(struct drm_device *dev)
{
 struct drm_i915_private *i915 = to_i915(dev);







 i915_gem_suspend(i915);

 return 0;
}
