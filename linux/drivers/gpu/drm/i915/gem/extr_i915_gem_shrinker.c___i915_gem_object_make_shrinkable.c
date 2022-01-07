
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {int obj_lock; int shrink_memory; int shrink_count; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_5__ {scalar_t__ size; int refcount; } ;
struct TYPE_4__ {int link; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int i915_gem_object_has_pages (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_is_shrinkable (struct drm_i915_gem_object*) ;
 int kref_read (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_empty (int *) ;
 struct drm_i915_private* obj_to_i915 (struct drm_i915_gem_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj,
           struct list_head *head)
{
 GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 GEM_BUG_ON(!list_empty(&obj->mm.link));

 if (i915_gem_object_is_shrinkable(obj)) {
  struct drm_i915_private *i915 = obj_to_i915(obj);
  unsigned long flags;

  spin_lock_irqsave(&i915->mm.obj_lock, flags);
  GEM_BUG_ON(!kref_read(&obj->base.refcount));

  list_add_tail(&obj->mm.link, head);
  i915->mm.shrink_count++;
  i915->mm.shrink_memory += obj->base.size;

  spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 }
}
