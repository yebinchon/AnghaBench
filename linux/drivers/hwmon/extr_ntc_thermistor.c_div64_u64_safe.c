
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ UINT_MAX ;
 scalar_t__ div64_u64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u64 div64_u64_safe(u64 dividend, u64 divisor)
{
 if (divisor == 0 && dividend == 0)
  return 0;
 if (divisor == 0)
  return UINT_MAX;
 return div64_u64(dividend, divisor);
}
