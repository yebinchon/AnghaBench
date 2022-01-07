
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_submission {void** i915_context_pdps; void* i915_context_pml4; } ;
struct i915_ppgtt {struct i915_page_directory* const pd; int vm; } ;
struct i915_page_directory {int dummy; } ;


 int GEN8_3LVL_PDPES ;
 struct i915_page_directory* i915_pd_entry (struct i915_page_directory* const,int) ;
 scalar_t__ i915_vm_is_4lvl (int *) ;
 void* px_dma (struct i915_page_directory* const) ;

__attribute__((used)) static void
i915_context_ppgtt_root_save(struct intel_vgpu_submission *s,
        struct i915_ppgtt *ppgtt)
{
 int i;

 if (i915_vm_is_4lvl(&ppgtt->vm)) {
  s->i915_context_pml4 = px_dma(ppgtt->pd);
 } else {
  for (i = 0; i < GEN8_3LVL_PDPES; i++) {
   struct i915_page_directory * const pd =
    i915_pd_entry(ppgtt->pd, i);

   s->i915_context_pdps[i] = px_dma(pd);
  }
 }
}
