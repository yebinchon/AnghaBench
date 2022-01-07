
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int active; } ;


 int i915_active_is_idle (int *) ;

__attribute__((used)) static inline bool i915_vma_is_active(const struct i915_vma *vma)
{
 return !i915_active_is_idle(&vma->active);
}
