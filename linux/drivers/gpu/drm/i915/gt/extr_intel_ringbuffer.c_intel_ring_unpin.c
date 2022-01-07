
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {int * vaddr; int emit; int pin_count; struct i915_vma* vma; } ;
struct i915_vma {int obj; } ;


 int GEM_BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int i915_gem_object_unpin_map (int ) ;
 scalar_t__ i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 int i915_vma_make_purgeable (struct i915_vma*) ;
 int i915_vma_unpin (struct i915_vma*) ;
 int i915_vma_unpin_iomap (struct i915_vma*) ;
 int i915_vma_unset_ggtt_write (struct i915_vma*) ;
 int intel_ring_reset (struct intel_ring*,int ) ;

void intel_ring_unpin(struct intel_ring *ring)
{
 struct i915_vma *vma = ring->vma;

 if (!atomic_dec_and_test(&ring->pin_count))
  return;


 intel_ring_reset(ring, ring->emit);

 i915_vma_unset_ggtt_write(vma);
 if (i915_vma_is_map_and_fenceable(vma))
  i915_vma_unpin_iomap(vma);
 else
  i915_gem_object_unpin_map(vma->obj);

 GEM_BUG_ON(!ring->vaddr);
 ring->vaddr = ((void*)0);

 i915_vma_unpin(vma);
 i915_vma_make_purgeable(vma);
}
