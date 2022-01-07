
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {TYPE_1__* fence; } ;
struct TYPE_2__ {int pin_count; } ;


 int GEM_BUG_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline void __i915_vma_unpin_fence(struct i915_vma *vma)
{
 GEM_BUG_ON(atomic_read(&vma->fence->pin_count) <= 0);
 atomic_dec(&vma->fence->pin_count);
}
