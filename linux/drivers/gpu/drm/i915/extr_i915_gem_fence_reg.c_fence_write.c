
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;
struct i915_fence_reg {int dirty; int i915; } ;


 scalar_t__ IS_GEN (int ,int) ;
 int i830_write_fence_reg (struct i915_fence_reg*,struct i915_vma*) ;
 int i915_write_fence_reg (struct i915_fence_reg*,struct i915_vma*) ;
 int i965_write_fence_reg (struct i915_fence_reg*,struct i915_vma*) ;

__attribute__((used)) static void fence_write(struct i915_fence_reg *fence,
   struct i915_vma *vma)
{






 if (IS_GEN(fence->i915, 2))
  i830_write_fence_reg(fence, vma);
 else if (IS_GEN(fence->i915, 3))
  i915_write_fence_reg(fence, vma);
 else
  i965_write_fence_reg(fence, vma);






 fence->dirty = 0;
}
