
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_timeline_cacheline {int active; int vaddr; TYPE_2__* hwsp; } ;
struct TYPE_4__ {TYPE_1__* vma; } ;
struct TYPE_3__ {int obj; } ;


 int CACHELINE_BITS ;
 int GEM_BUG_ON (int) ;
 int __idle_hwsp_free (TYPE_2__*,int ) ;
 int i915_active_fini (int *) ;
 int i915_active_is_idle (int *) ;
 int i915_gem_object_unpin_map (int ) ;
 int i915_vma_put (TYPE_1__*) ;
 int kfree (struct intel_timeline_cacheline*) ;
 int ptr_unmask_bits (int ,int ) ;

__attribute__((used)) static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
{
 GEM_BUG_ON(!i915_active_is_idle(&cl->active));

 i915_gem_object_unpin_map(cl->hwsp->vma->obj);
 i915_vma_put(cl->hwsp->vma);
 __idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));

 i915_active_fini(&cl->active);
 kfree(cl);
}
