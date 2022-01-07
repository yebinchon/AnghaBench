
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i915_vma {int obj; TYPE_3__* vm; } ;
struct TYPE_6__ {TYPE_2__* i915; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;


 unsigned long PLANE_HAS_FENCE ;
 int i915_gem_object_lock (int ) ;
 int i915_gem_object_unlock (int ) ;
 int i915_gem_object_unpin_from_display_plane (struct i915_vma*) ;
 int i915_vma_put (struct i915_vma*) ;
 int i915_vma_unpin_fence (struct i915_vma*) ;
 int lockdep_assert_held (int *) ;

void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
{
 lockdep_assert_held(&vma->vm->i915->drm.struct_mutex);

 i915_gem_object_lock(vma->obj);
 if (flags & PLANE_HAS_FENCE)
  i915_vma_unpin_fence(vma);
 i915_gem_object_unpin_from_display_plane(vma);
 i915_gem_object_unlock(vma->obj);

 i915_vma_put(vma);
}
