
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i915_ppgtt {int vm; } ;
struct TYPE_4__ {int unbind_vma; int bind_vma; } ;
struct TYPE_5__ {TYPE_1__ vma_ops; struct drm_i915_private* i915; } ;
struct i915_ggtt {TYPE_2__ vm; int alias; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;


 struct i915_ppgtt* fetch_and_zero (int *) ;
 int ggtt_bind_vma ;
 int ggtt_unbind_vma ;
 int i915_vm_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fini_aliasing_ppgtt(struct i915_ggtt *ggtt)
{
 struct drm_i915_private *i915 = ggtt->vm.i915;
 struct i915_ppgtt *ppgtt;

 mutex_lock(&i915->drm.struct_mutex);

 ppgtt = fetch_and_zero(&ggtt->alias);
 if (!ppgtt)
  goto out;

 i915_vm_put(&ppgtt->vm);

 ggtt->vm.vma_ops.bind_vma = ggtt_bind_vma;
 ggtt->vm.vma_ops.unbind_vma = ggtt_unbind_vma;

out:
 mutex_unlock(&i915->drm.struct_mutex);
}
