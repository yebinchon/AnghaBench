
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static void find_bits(unsigned long mask, u8 *pos, u8 *size)
{
 u8 first, len;

 first = 0;
 len = 0;

 if (mask) {
  while (!(mask & 0x1)) {
   mask = mask >> 1;
   first++;
  }

  while (mask & 0x1) {
   mask = mask >> 1;
   len++;
  }
 }

 *pos = first;
 *size = len;
}
