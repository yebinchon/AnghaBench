
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int dummy; } ;
struct gen6_ppgtt {int vma; scalar_t__ pin_count; } ;


 int i915_vma_unpin (int ) ;
 struct gen6_ppgtt* to_gen6_ppgtt (struct i915_ppgtt*) ;

void gen6_ppgtt_unpin_all(struct i915_ppgtt *base)
{
 struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);

 if (!ppgtt->pin_count)
  return;

 ppgtt->pin_count = 0;
 i915_vma_unpin(ppgtt->vma);
}
