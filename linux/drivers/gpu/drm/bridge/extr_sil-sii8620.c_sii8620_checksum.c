
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 sii8620_checksum(void *ptr, int size)
{
 u8 *d = ptr, sum = 0;

 while (size--)
  sum += *d++;

 return sum;
}
