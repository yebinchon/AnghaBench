
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring {int size; } ;



__attribute__((used)) static inline u32 intel_ring_wrap(const struct intel_ring *ring, u32 pos)
{
 return pos & (ring->size - 1);
}
