
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int engine; } ;
struct i915_vma {int private; } ;


 int i915_vma_unpin (struct i915_vma*) ;
 int intel_engine_pm_put (int ) ;
 int intel_engine_pool_put (int ) ;

void intel_emit_vma_release(struct intel_context *ce, struct i915_vma *vma)
{
 i915_vma_unpin(vma);
 intel_engine_pool_put(vma->private);
 intel_engine_pm_put(ce->engine);
}
