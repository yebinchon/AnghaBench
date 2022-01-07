
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int obj; } ;


 int i915_gem_object_put (int ) ;

__attribute__((used)) static inline void i915_vma_put(struct i915_vma *vma)
{
 i915_gem_object_put(vma->obj);
}
