
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {unsigned long size; unsigned long effective_size; int pin_count; void* vaddr; int ref; } ;
struct intel_engine_cs {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int atomic_set (int *,int) ;
 int intel_ring_update_space (struct intel_ring*) ;
 int kref_init (int *) ;
 struct intel_ring* kzalloc (int,int ) ;

__attribute__((used)) static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
{
 const unsigned long sz = PAGE_SIZE / 2;
 struct intel_ring *ring;

 ring = kzalloc(sizeof(*ring) + sz, GFP_KERNEL);
 if (!ring)
  return ((void*)0);

 kref_init(&ring->ref);
 ring->size = sz;
 ring->effective_size = sz;
 ring->vaddr = (void *)(ring + 1);
 atomic_set(&ring->pin_count, 1);

 intel_ring_update_space(ring);

 return ring;
}
