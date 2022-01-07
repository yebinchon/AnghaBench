
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_ppgtt {int dummy; } ;
struct TYPE_3__ {int closed; } ;
struct TYPE_4__ {TYPE_1__ vm; } ;
struct gen6_ppgtt {scalar_t__ pin_count; int vma; TYPE_2__ base; } ;


 int GEM_BUG_ON (int ) ;
 int GEN6_PD_ALIGN ;
 int PIN_GLOBAL ;
 int PIN_HIGH ;
 int i915_vma_pin (int ,int ,int ,int) ;
 struct gen6_ppgtt* to_gen6_ppgtt (struct i915_ppgtt*) ;

int gen6_ppgtt_pin(struct i915_ppgtt *base)
{
 struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
 int err;

 GEM_BUG_ON(ppgtt->base.vm.closed);







 if (ppgtt->pin_count++)
  return 0;






 err = i915_vma_pin(ppgtt->vma,
      0, GEN6_PD_ALIGN,
      PIN_GLOBAL | PIN_HIGH);
 if (err)
  goto unpin;

 return 0;

unpin:
 ppgtt->pin_count = 0;
 return err;
}
