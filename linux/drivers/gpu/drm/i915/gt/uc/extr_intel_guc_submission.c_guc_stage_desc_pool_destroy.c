
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int stage_desc_pool; int stage_ids; } ;


 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;
 int ida_destroy (int *) ;

__attribute__((used)) static void guc_stage_desc_pool_destroy(struct intel_guc *guc)
{
 ida_destroy(&guc->stage_ids);
 i915_vma_unpin_and_release(&guc->stage_desc_pool, I915_VMA_RELEASE_MAP);
}
