
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 long LONG_MAX ;
 int fls64 (int) ;

__attribute__((used)) static long float_to_long(u32 data, u32 precision)
{
 u64 man = data & 0x007FFFFF;
 int exp = ((data & 0x7F800000) >> 23) - 127 - 23;
 bool negative = data & 0x80000000;
 long result;

 man = (man + (1 << 23)) * precision;

 if (fls64(man) + exp > (int)sizeof(long) * 8 - 1)
  result = LONG_MAX;
 else if (exp < 0)
  result = (man + (1ull << (-exp - 1))) >> -exp;
 else
  result = man << exp;

 return negative ? -result : result;
}
