
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static int skx_bits(u64 addr, int nbits, u8 *bits)
{
 int i, res = 0;

 for (i = 0; i < nbits; i++)
  res |= ((addr >> bits[i]) & 1) << i;
 return res;
}
