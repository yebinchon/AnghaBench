
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct drm_i915_gem_object {TYPE_2__* ops; TYPE_1__ mm; } ;
struct TYPE_4__ {int (* writeback ) (struct drm_i915_gem_object*) ;} ;


 int GEM_BUG_ON (int ) ;
 int i915_gem_object_has_pages (struct drm_i915_gem_object*) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct drm_i915_gem_object*) ;

void i915_gem_object_writeback(struct drm_i915_gem_object *obj)
{
 lockdep_assert_held(&obj->mm.lock);
 GEM_BUG_ON(i915_gem_object_has_pages(obj));

 if (obj->ops->writeback)
  obj->ops->writeback(obj);
}
