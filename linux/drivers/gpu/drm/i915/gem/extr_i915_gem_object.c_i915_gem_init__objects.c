
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_work; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int INIT_WORK (int *,int ) ;
 int __i915_gem_free_work ;

void i915_gem_init__objects(struct drm_i915_private *i915)
{
 INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
}
