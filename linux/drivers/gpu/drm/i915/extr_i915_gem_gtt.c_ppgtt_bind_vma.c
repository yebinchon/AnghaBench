
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int start; } ;
struct i915_vma {int flags; TYPE_2__* vm; int obj; int size; TYPE_1__ node; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
struct TYPE_5__ {int (* allocate_va_range ) (TYPE_2__*,int ,int ) ;int (* insert_entries ) (TYPE_2__*,struct i915_vma*,int,int ) ;} ;


 int I915_VMA_LOCAL_BIND ;
 int PTE_READ_ONLY ;
 scalar_t__ i915_gem_object_is_readonly (int ) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,struct i915_vma*,int,int ) ;

__attribute__((used)) static int ppgtt_bind_vma(struct i915_vma *vma,
     enum i915_cache_level cache_level,
     u32 unused)
{
 u32 pte_flags;
 int err;

 if (!(vma->flags & I915_VMA_LOCAL_BIND)) {
  err = vma->vm->allocate_va_range(vma->vm,
       vma->node.start, vma->size);
  if (err)
   return err;
 }


 pte_flags = 0;
 if (i915_gem_object_is_readonly(vma->obj))
  pte_flags |= PTE_READ_ONLY;

 vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);

 return 0;
}
