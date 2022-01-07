
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int shared_data; } ;


 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;

__attribute__((used)) static void guc_shared_data_destroy(struct intel_guc *guc)
{
 i915_vma_unpin_and_release(&guc->shared_data, I915_VMA_RELEASE_MAP);
}
