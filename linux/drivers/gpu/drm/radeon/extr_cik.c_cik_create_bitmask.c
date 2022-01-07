
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 cik_create_bitmask(u32 bit_width)
{
 u32 i, mask = 0;

 for (i = 0; i < bit_width; i++) {
  mask <<= 1;
  mask |= 1;
 }
 return mask;
}
