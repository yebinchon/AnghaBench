
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



inline u8 buswidth_to_dmatsize(u8 buswidth)
{
 u8 res;

 for (res = 0; buswidth > 1; buswidth /= 2)
  res++;
 return res;
}
