
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct_channel {int vma; int enabled; } ;
struct intel_guc {int dummy; } ;


 int GEM_BUG_ON (int ) ;
 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;

__attribute__((used)) static void ctch_fini(struct intel_guc *guc,
        struct intel_guc_ct_channel *ctch)
{
 GEM_BUG_ON(ctch->enabled);

 i915_vma_unpin_and_release(&ctch->vma, I915_VMA_RELEASE_MAP);
}
