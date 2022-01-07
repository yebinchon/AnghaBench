
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static inline u64 __pow10(u8 x)
{
 u64 r = 1;

 while (x--)
  r *= 10;

 return r;
}
