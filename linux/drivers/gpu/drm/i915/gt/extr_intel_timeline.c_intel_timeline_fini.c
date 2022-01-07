
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_timeline {TYPE_1__* hwsp_ggtt; scalar_t__ hwsp_cacheline; int requests; int pin_count; } ;
struct TYPE_2__ {int obj; } ;


 int GEM_BUG_ON (int) ;
 int atomic_read (int *) ;
 int cacheline_free (scalar_t__) ;
 int i915_gem_object_unpin_map (int ) ;
 int i915_vma_put (TYPE_1__*) ;
 int list_empty (int *) ;

void intel_timeline_fini(struct intel_timeline *timeline)
{
 GEM_BUG_ON(atomic_read(&timeline->pin_count));
 GEM_BUG_ON(!list_empty(&timeline->requests));

 if (timeline->hwsp_cacheline)
  cacheline_free(timeline->hwsp_cacheline);
 else
  i915_gem_object_unpin_map(timeline->hwsp_ggtt->obj);

 i915_vma_put(timeline->hwsp_ggtt);
}
