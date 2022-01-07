
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8
nvbios_checksum(const u8 *data, int size)
{
 u8 sum = 0;
 while (size--)
  sum += *data++;
 return sum;
}
