
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int rsa_data; } ;


 int i915_vma_unpin_and_release (int *,int ) ;

__attribute__((used)) static void intel_huc_rsa_data_destroy(struct intel_huc *huc)
{
 i915_vma_unpin_and_release(&huc->rsa_data, 0);
}
