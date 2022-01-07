
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 cx24123_int_log2(u32 a, u32 b)
{
 u32 exp, nearest = 0;
 u32 div = a / b;
 if (a % b >= b / 2)
  ++div;
 if (div < (1UL << 31)) {
  for (exp = 1; div > exp; nearest++)
   exp += exp;
 }
 return nearest;
}
