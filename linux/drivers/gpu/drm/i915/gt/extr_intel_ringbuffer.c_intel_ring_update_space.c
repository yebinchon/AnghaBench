
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {unsigned int space; int size; int emit; int head; } ;


 unsigned int __intel_ring_space (int ,int ,int ) ;

unsigned int intel_ring_update_space(struct intel_ring *ring)
{
 unsigned int space;

 space = __intel_ring_space(ring->head, ring->emit, ring->size);

 ring->space = space;
 return space;
}
