
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t top; int * scratch; } ;
struct i915_ppgtt {TYPE_2__ vm; TYPE_1__* pd; } ;
struct i915_page_dma {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct i915_page_dma** entry; } ;


 int px_base (int *) ;
 int px_dma (int ) ;

__attribute__((used)) static inline dma_addr_t
i915_page_dir_dma_addr(const struct i915_ppgtt *ppgtt, const unsigned int n)
{
 struct i915_page_dma *pt = ppgtt->pd->entry[n];

 return px_dma(pt ?: px_base(&ppgtt->vm.scratch[ppgtt->vm.top]));
}
