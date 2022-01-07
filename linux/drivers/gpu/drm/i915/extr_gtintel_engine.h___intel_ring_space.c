
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CACHELINE_BYTES ;
 int GEM_BUG_ON (int) ;
 int is_power_of_2 (unsigned int) ;

__attribute__((used)) static inline unsigned int
__intel_ring_space(unsigned int head, unsigned int tail, unsigned int size)
{





 GEM_BUG_ON(!is_power_of_2(size));
 return (head - tail - CACHELINE_BYTES) & (size - 1);
}
