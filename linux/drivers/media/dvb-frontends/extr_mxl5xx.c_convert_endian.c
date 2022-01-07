
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void convert_endian(u8 flag, u32 size, u8 *d)
{
 u32 i;

 if (!flag)
  return;
 for (i = 0; i < (size & ~3); i += 4) {
  d[i + 0] ^= d[i + 3];
  d[i + 3] ^= d[i + 0];
  d[i + 0] ^= d[i + 3];

  d[i + 1] ^= d[i + 2];
  d[i + 2] ^= d[i + 1];
  d[i + 1] ^= d[i + 2];
 }

 switch (size & 3) {
 case 0:
 case 1:

  break;
 case 2:
  d[i + 0] ^= d[i + 1];
  d[i + 1] ^= d[i + 0];
  d[i + 0] ^= d[i + 1];
  break;

 case 3:
  d[i + 0] ^= d[i + 2];
  d[i + 2] ^= d[i + 0];
  d[i + 0] ^= d[i + 2];
  break;
 }

}
