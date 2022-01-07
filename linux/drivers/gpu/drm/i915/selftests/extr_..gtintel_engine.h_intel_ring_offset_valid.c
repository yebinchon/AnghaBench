
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {unsigned int size; } ;


 int IS_ALIGNED (unsigned int,int) ;

__attribute__((used)) static inline bool
intel_ring_offset_valid(const struct intel_ring *ring,
   unsigned int pos)
{
 if (pos & -ring->size)
  return 0;

 if (!IS_ALIGNED(pos, 8))
  return 0;

 return 1;
}
