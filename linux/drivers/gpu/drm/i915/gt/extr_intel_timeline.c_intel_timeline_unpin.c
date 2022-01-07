
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int hwsp_ggtt; int hwsp_cacheline; int pin_count; } ;


 int GEM_BUG_ON (int) ;
 int __i915_vma_unpin (int ) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int cacheline_release (int ) ;

void intel_timeline_unpin(struct intel_timeline *tl)
{
 GEM_BUG_ON(!atomic_read(&tl->pin_count));
 if (!atomic_dec_and_test(&tl->pin_count))
  return;

 cacheline_release(tl->hwsp_cacheline);

 __i915_vma_unpin(tl->hwsp_ggtt);
}
