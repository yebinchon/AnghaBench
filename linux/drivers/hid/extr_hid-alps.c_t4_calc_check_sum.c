
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;



__attribute__((used)) static u16 t4_calc_check_sum(u8 *buffer,
  unsigned long offset, unsigned long length)
{
 u16 sum1 = 0xFF, sum2 = 0xFF;
 unsigned long i = 0;

 if (offset + length >= 50)
  return 0;

 while (length > 0) {
  u32 tlen = length > 20 ? 20 : length;

  length -= tlen;

  do {
   sum1 += buffer[offset + i];
   sum2 += sum1;
   i++;
  } while (--tlen > 0);

  sum1 = (sum1 & 0xFF) + (sum1 >> 8);
  sum2 = (sum2 & 0xFF) + (sum2 >> 8);
 }

 sum1 = (sum1 & 0xFF) + (sum1 >> 8);
 sum2 = (sum2 & 0xFF) + (sum2 >> 8);

 return(sum2 << 8 | sum1);
}
