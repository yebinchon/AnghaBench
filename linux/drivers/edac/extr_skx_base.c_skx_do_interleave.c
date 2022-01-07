
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 skx_do_interleave(u64 addr, int shift, int ways, u64 lowbits)
{
 addr >>= shift;
 addr /= ways;
 addr <<= shift;

 return addr | (lowbits & ((1ull << shift) - 1));
}
