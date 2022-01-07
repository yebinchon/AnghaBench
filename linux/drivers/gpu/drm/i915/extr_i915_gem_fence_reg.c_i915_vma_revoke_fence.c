
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {TYPE_1__* vm; struct i915_fence_reg* fence; } ;
struct i915_fence_reg {int pin_count; } ;
struct TYPE_2__ {int mutex; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int fence_update (struct i915_fence_reg*,int *) ;
 int lockdep_assert_held (int *) ;

int i915_vma_revoke_fence(struct i915_vma *vma)
{
 struct i915_fence_reg *fence = vma->fence;

 lockdep_assert_held(&vma->vm->mutex);
 if (!fence)
  return 0;

 if (atomic_read(&fence->pin_count))
  return -EBUSY;

 return fence_update(fence, ((void*)0));
}
