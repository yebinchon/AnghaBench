
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int GEM_BUG_ON (int) ;
 scalar_t__ U32_MAX ;
 int div64_u64_rem (scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ get_random_int () ;
 scalar_t__ get_random_long () ;
 int range_overflows (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ round_down (scalar_t__,scalar_t__) ;
 scalar_t__ round_up (scalar_t__,scalar_t__) ;

__attribute__((used)) static u64 random_offset(u64 start, u64 end, u64 len, u64 align)
{
 u64 range, addr;

 GEM_BUG_ON(range_overflows(start, len, end));
 GEM_BUG_ON(round_up(start, align) > round_down(end - len, align));

 range = round_down(end - len, align) - round_up(start, align);
 if (range) {
  if (sizeof(unsigned long) == sizeof(u64)) {
   addr = get_random_long();
  } else {
   addr = get_random_int();
   if (range > U32_MAX) {
    addr <<= 32;
    addr |= get_random_int();
   }
  }
  div64_u64_rem(addr, range, &addr);
  start += addr;
 }

 return round_up(start, align);
}
