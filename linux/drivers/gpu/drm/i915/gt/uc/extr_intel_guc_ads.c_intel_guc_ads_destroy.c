
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int ads_vma; } ;


 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;

void intel_guc_ads_destroy(struct intel_guc *guc)
{
 i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
}
