
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* allocate_va_range ) (TYPE_3__*,int ,int ) ;int total; } ;
struct i915_ppgtt {TYPE_3__ vm; } ;
struct TYPE_5__ {scalar_t__ bind_vma; scalar_t__ unbind_vma; } ;
struct TYPE_6__ {TYPE_1__ vma_ops; int total; int i915; } ;
struct i915_ggtt {TYPE_2__ vm; struct i915_ppgtt* alias; } ;


 int ENODEV ;
 int GEM_BUG_ON (int) ;
 scalar_t__ GEM_WARN_ON (int) ;
 scalar_t__ IS_ERR (struct i915_ppgtt*) ;
 int PTR_ERR (struct i915_ppgtt*) ;
 scalar_t__ aliasing_gtt_bind_vma ;
 scalar_t__ aliasing_gtt_unbind_vma ;
 scalar_t__ ggtt_bind_vma ;
 scalar_t__ ggtt_unbind_vma ;
 struct i915_ppgtt* i915_ppgtt_create (int ) ;
 int i915_vm_put (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
{
 struct i915_ppgtt *ppgtt;
 int err;

 ppgtt = i915_ppgtt_create(ggtt->vm.i915);
 if (IS_ERR(ppgtt))
  return PTR_ERR(ppgtt);

 if (GEM_WARN_ON(ppgtt->vm.total < ggtt->vm.total)) {
  err = -ENODEV;
  goto err_ppgtt;
 }







 err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, ggtt->vm.total);
 if (err)
  goto err_ppgtt;

 ggtt->alias = ppgtt;

 GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != ggtt_bind_vma);
 ggtt->vm.vma_ops.bind_vma = aliasing_gtt_bind_vma;

 GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
 ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;

 return 0;

err_ppgtt:
 i915_vm_put(&ppgtt->vm);
 return err;
}
