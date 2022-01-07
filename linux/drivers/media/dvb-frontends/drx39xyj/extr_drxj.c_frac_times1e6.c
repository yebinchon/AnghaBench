
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 frac_times1e6(u32 N, u32 D)
{
 u32 remainder = 0;
 u32 frac = 0;
 frac = (((u32) N) * (1000000 >> 4)) / D;
 frac <<= 4;
 remainder = (((u32) N) * (1000000 >> 4)) % D;
 remainder <<= 4;
 frac += remainder / D;
 remainder = remainder % D;
 if ((remainder * 2) > D)
  frac++;

 return frac;
}
