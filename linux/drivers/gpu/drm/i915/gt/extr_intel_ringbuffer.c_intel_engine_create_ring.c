
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring {int size; int effective_size; struct i915_vma* vma; int ref; } ;
struct intel_engine_cs {TYPE_1__* gt; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int ggtt; } ;


 int CACHELINE_BYTES ;
 int ENOMEM ;
 struct intel_ring* ERR_CAST (struct i915_vma*) ;
 struct intel_ring* ERR_PTR (int ) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_I845G (struct drm_i915_private*) ;
 int RING_CTL_SIZE (int) ;
 int RING_NR_PAGES ;
 struct i915_vma* create_ring_vma (int ,int) ;
 int intel_ring_update_space (struct intel_ring*) ;
 int is_power_of_2 (int) ;
 int kfree (struct intel_ring*) ;
 int kref_init (int *) ;
 struct intel_ring* kzalloc (int,int ) ;

struct intel_ring *
intel_engine_create_ring(struct intel_engine_cs *engine, int size)
{
 struct drm_i915_private *i915 = engine->i915;
 struct intel_ring *ring;
 struct i915_vma *vma;

 GEM_BUG_ON(!is_power_of_2(size));
 GEM_BUG_ON(RING_CTL_SIZE(size) & ~RING_NR_PAGES);

 ring = kzalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring)
  return ERR_PTR(-ENOMEM);

 kref_init(&ring->ref);

 ring->size = size;




 ring->effective_size = size;
 if (IS_I830(i915) || IS_I845G(i915))
  ring->effective_size -= 2 * CACHELINE_BYTES;

 intel_ring_update_space(ring);

 vma = create_ring_vma(engine->gt->ggtt, size);
 if (IS_ERR(vma)) {
  kfree(ring);
  return ERR_CAST(vma);
 }
 ring->vma = vma;

 return ring;
}
