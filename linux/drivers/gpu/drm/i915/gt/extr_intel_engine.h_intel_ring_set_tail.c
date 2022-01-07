
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {unsigned int tail; } ;


 int assert_ring_tail_valid (struct intel_ring*,unsigned int) ;

__attribute__((used)) static inline unsigned int
intel_ring_set_tail(struct intel_ring *ring, unsigned int tail)
{






 assert_ring_tail_valid(ring, tail);
 ring->tail = tail;
 return tail;
}
