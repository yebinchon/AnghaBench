
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hang {TYPE_1__* gt; int ctx; int hws; int obj; int * batch; } ;
struct TYPE_2__ {int i915; } ;


 int I915_WAIT_LOCKED ;
 int MI_BATCH_BUFFER_END ;
 int i915_gem_object_put (int ) ;
 int i915_gem_object_unpin_map (int ) ;
 int igt_flush_test (int ,int ) ;
 int intel_gt_chipset_flush (TYPE_1__*) ;
 int kernel_context_close (int ) ;

__attribute__((used)) static void hang_fini(struct hang *h)
{
 *h->batch = MI_BATCH_BUFFER_END;
 intel_gt_chipset_flush(h->gt);

 i915_gem_object_unpin_map(h->obj);
 i915_gem_object_put(h->obj);

 i915_gem_object_unpin_map(h->hws);
 i915_gem_object_put(h->hws);

 kernel_context_close(h->ctx);

 igt_flush_test(h->gt->i915, I915_WAIT_LOCKED);
}
