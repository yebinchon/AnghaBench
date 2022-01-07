
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 gold2root(u32 gold)
{
 u32 x, g, tmp = gold;

 if (tmp >= 0x3ffff)
  tmp = 0;
 for (g = 0, x = 1; g < tmp; g++)
  x = (((x ^ (x >> 7)) & 1) << 17) | (x >> 1);
 return x;
}
