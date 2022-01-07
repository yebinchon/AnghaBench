
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {int obj_lock; struct list_head purge_list; struct list_head shrink_list; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_5__ {int refcount; } ;
struct TYPE_4__ {int link; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;


 int LIST_HEAD (int ) ;
 int WARN_ON (int ) ;
 struct drm_i915_gem_object* first_mm_object (struct list_head*) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_sanitize (struct drm_i915_private*) ;
 int keep ;
 int kref_get_unless_zero (int *) ;
 int list_move_tail (int *,int *) ;
 int list_splice_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i915_gem_suspend_late(struct drm_i915_private *i915)
{
 struct drm_i915_gem_object *obj;
 struct list_head *phases[] = {
  &i915->mm.shrink_list,
  &i915->mm.purge_list,
  ((void*)0)
 }, **phase;
 unsigned long flags;
 spin_lock_irqsave(&i915->mm.obj_lock, flags);
 for (phase = phases; *phase; phase++) {
  LIST_HEAD(keep);

  while ((obj = first_mm_object(*phase))) {
   list_move_tail(&obj->mm.link, &keep);


   if (!kref_get_unless_zero(&obj->base.refcount))
    continue;

   spin_unlock_irqrestore(&i915->mm.obj_lock, flags);

   i915_gem_object_lock(obj);
   WARN_ON(i915_gem_object_set_to_gtt_domain(obj, 0));
   i915_gem_object_unlock(obj);
   i915_gem_object_put(obj);

   spin_lock_irqsave(&i915->mm.obj_lock, flags);
  }

  list_splice_tail(&keep, *phase);
 }
 spin_unlock_irqrestore(&i915->mm.obj_lock, flags);

 i915_gem_sanitize(i915);
}
