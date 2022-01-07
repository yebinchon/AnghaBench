
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_log {int vma; } ;


 int i915_vma_unpin_and_release (int *,int ) ;

void intel_guc_log_destroy(struct intel_guc_log *log)
{
 i915_vma_unpin_and_release(&log->vma, 0);
}
