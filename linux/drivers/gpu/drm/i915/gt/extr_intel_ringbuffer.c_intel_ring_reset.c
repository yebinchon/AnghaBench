
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct intel_ring {void* emit; void* head; void* tail; } ;


 int intel_ring_update_space (struct intel_ring*) ;
 void* intel_ring_wrap (struct intel_ring*,void*) ;

void intel_ring_reset(struct intel_ring *ring, u32 tail)
{
 tail = intel_ring_wrap(ring, tail);
 ring->tail = tail;
 ring->head = tail;
 ring->emit = tail;
 intel_ring_update_space(ring);
}
