
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int free_work; int free_list; int free_count; } ;
struct drm_i915_private {TYPE_2__ mm; int wq; } ;
struct TYPE_3__ {int dev; } ;
struct drm_i915_gem_object {int freed; TYPE_1__ base; } ;
struct drm_gem_object {int dummy; } ;


 int GEM_BUG_ON (int ) ;
 int atomic_inc (int *) ;
 int i915_gem_object_is_framebuffer (struct drm_i915_gem_object*) ;
 int i915_gem_object_make_unshrinkable (struct drm_i915_gem_object*) ;
 scalar_t__ llist_add (int *,int *) ;
 int queue_work (int ,int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct drm_i915_gem_object* to_intel_bo (struct drm_gem_object*) ;

void i915_gem_free_object(struct drm_gem_object *gem_obj)
{
 struct drm_i915_gem_object *obj = to_intel_bo(gem_obj);
 struct drm_i915_private *i915 = to_i915(obj->base.dev);

 GEM_BUG_ON(i915_gem_object_is_framebuffer(obj));







 atomic_inc(&i915->mm.free_count);
 i915_gem_object_make_unshrinkable(obj);
 if (llist_add(&obj->freed, &i915->mm.free_list))
  queue_work(i915->wq, &i915->mm.free_work);
}
