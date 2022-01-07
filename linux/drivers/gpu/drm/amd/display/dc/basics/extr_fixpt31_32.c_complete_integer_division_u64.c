
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (unsigned long long) ;
 unsigned long long div64_u64_rem (unsigned long long,unsigned long long,unsigned long long*) ;

__attribute__((used)) static inline unsigned long long complete_integer_division_u64(
 unsigned long long dividend,
 unsigned long long divisor,
 unsigned long long *remainder)
{
 unsigned long long result;

 ASSERT(divisor);

 result = div64_u64_rem(dividend, divisor, remainder);

 return result;
}
