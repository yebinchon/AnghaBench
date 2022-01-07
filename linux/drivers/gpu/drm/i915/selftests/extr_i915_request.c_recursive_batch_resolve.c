
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_vma {int obj; TYPE_1__* vm; } ;
struct TYPE_2__ {int gt; } ;


 int I915_MAP_WC ;
 scalar_t__ IS_ERR (int *) ;
 int MI_BATCH_BUFFER_END ;
 int PTR_ERR (int *) ;
 int * i915_gem_object_pin_map (int ,int ) ;
 int i915_gem_object_unpin_map (int ) ;
 int intel_gt_chipset_flush (int ) ;

__attribute__((used)) static int recursive_batch_resolve(struct i915_vma *batch)
{
 u32 *cmd;

 cmd = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
 if (IS_ERR(cmd))
  return PTR_ERR(cmd);

 *cmd = MI_BATCH_BUFFER_END;
 intel_gt_chipset_flush(batch->vm->gt);

 i915_gem_object_unpin_map(batch->obj);

 return 0;
}
