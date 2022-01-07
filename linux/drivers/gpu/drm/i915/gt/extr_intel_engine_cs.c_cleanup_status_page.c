
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vma; } ;
struct intel_engine_cs {int i915; TYPE_1__ status_page; } ;
struct i915_vma {int obj; } ;


 int HWS_NEEDS_PHYSICAL (int ) ;
 struct i915_vma* fetch_and_zero (int *) ;
 int i915_gem_object_put (int ) ;
 int i915_gem_object_unpin_map (int ) ;
 int i915_vma_unpin (struct i915_vma*) ;
 int intel_engine_set_hwsp_writemask (struct intel_engine_cs*,unsigned int) ;

__attribute__((used)) static void cleanup_status_page(struct intel_engine_cs *engine)
{
 struct i915_vma *vma;


 intel_engine_set_hwsp_writemask(engine, ~0u);

 vma = fetch_and_zero(&engine->status_page.vma);
 if (!vma)
  return;

 if (!HWS_NEEDS_PHYSICAL(engine->i915))
  i915_vma_unpin(vma);

 i915_gem_object_unpin_map(vma->obj);
 i915_gem_object_put(vma->obj);
}
