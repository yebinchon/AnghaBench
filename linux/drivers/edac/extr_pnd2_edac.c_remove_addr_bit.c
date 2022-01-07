
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static void remove_addr_bit(u64 *addr, int bitidx)
{
 u64 mask;

 if (bitidx == -1)
  return;

 mask = (1ull << bitidx) - 1;
 *addr = ((*addr >> 1) & ~mask) | (*addr & mask);
}
