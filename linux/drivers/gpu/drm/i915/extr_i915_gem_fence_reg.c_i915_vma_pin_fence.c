
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {TYPE_2__* vm; } ;
struct TYPE_4__ {int mutex; TYPE_1__* i915; } ;
struct TYPE_3__ {int runtime_pm; } ;


 int GEM_BUG_ON (int) ;
 int __i915_vma_pin_fence (struct i915_vma*) ;
 int assert_rpm_wakelock_held (int *) ;
 int i915_vma_is_ggtt (struct i915_vma*) ;
 int i915_vma_is_pinned (struct i915_vma*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int i915_vma_pin_fence(struct i915_vma *vma)
{
 int err;





 assert_rpm_wakelock_held(&vma->vm->i915->runtime_pm);
 GEM_BUG_ON(!i915_vma_is_pinned(vma));
 GEM_BUG_ON(!i915_vma_is_ggtt(vma));

 err = mutex_lock_interruptible(&vma->vm->mutex);
 if (err)
  return err;

 err = __i915_vma_pin_fence(vma);
 mutex_unlock(&vma->vm->mutex);

 return err;
}
