
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int i915_gem_suspend (struct drm_i915_private*) ;

__attribute__((used)) static int pm_prepare(struct drm_i915_private *i915)
{
 i915_gem_suspend(i915);

 return 0;
}
