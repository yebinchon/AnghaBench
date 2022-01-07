
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;



__attribute__((used)) static void __implement(u8 *report, unsigned offset, int n, u32 value)
{
 unsigned int idx = offset / 8;
 unsigned int bit_shift = offset % 8;
 int bits_to_set = 8 - bit_shift;

 while (n - bits_to_set >= 0) {
  report[idx] &= ~(0xff << bit_shift);
  report[idx] |= value << bit_shift;
  value >>= bits_to_set;
  n -= bits_to_set;
  bits_to_set = 8;
  bit_shift = 0;
  idx++;
 }


 if (n) {
  u8 bit_mask = ((1U << n) - 1);
  report[idx] &= ~(bit_mask << bit_shift);
  report[idx] |= value << bit_shift;
 }
}
