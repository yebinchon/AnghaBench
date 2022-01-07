
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int closed_link; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool i915_vma_is_closed(const struct i915_vma *vma)
{
 return !list_empty(&vma->closed_link);
}
