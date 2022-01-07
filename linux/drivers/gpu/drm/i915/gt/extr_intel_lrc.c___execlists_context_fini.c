
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int state; int ring; } ;


 int i915_vma_put (int ) ;
 int intel_ring_put (int ) ;

__attribute__((used)) static void __execlists_context_fini(struct intel_context *ce)
{
 intel_ring_put(ce->ring);
 i915_vma_put(ce->state);
}
