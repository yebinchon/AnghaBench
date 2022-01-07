
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int obj_lock; int shrink_memory; int shrink_count; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_5__ {int link; } ;
struct drm_i915_gem_object {TYPE_1__ base; TYPE_2__ mm; } ;


 int GEM_BUG_ON (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 struct drm_i915_private* obj_to_i915 (struct drm_i915_gem_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj)
{






 if (!list_empty(&obj->mm.link)) {
  struct drm_i915_private *i915 = obj_to_i915(obj);
  unsigned long flags;

  spin_lock_irqsave(&i915->mm.obj_lock, flags);
  GEM_BUG_ON(list_empty(&obj->mm.link));

  list_del_init(&obj->mm.link);
  i915->mm.shrink_count--;
  i915->mm.shrink_memory -= obj->base.size;

  spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 }
}
