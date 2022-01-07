
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u32 ;



__attribute__((used)) static u32 __extract(u8 *report, unsigned offset, int n)
{
 unsigned int idx = offset / 8;
 unsigned int bit_nr = 0;
 unsigned int bit_shift = offset % 8;
 int bits_to_copy = 8 - bit_shift;
 u32 value = 0;
 u32 mask = n < 32 ? (1U << n) - 1 : ~0U;

 while (n > 0) {
  value |= ((u32)report[idx] >> bit_shift) << bit_nr;
  n -= bits_to_copy;
  bit_nr += bits_to_copy;
  bits_to_copy = 8;
  bit_shift = 0;
  idx++;
 }

 return value & mask;
}
