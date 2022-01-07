
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ div64_u64 (unsigned long long,scalar_t__) ;
 scalar_t__ get_unaligned_be32 (int *) ;
 unsigned long long get_unaligned_be64 (scalar_t__*) ;

__attribute__((used)) static u64 occ_get_powr_avg(u64 *accum, u32 *samples)
{
 u64 divisor = get_unaligned_be32(samples);

 return (divisor == 0) ? 0 :
  div64_u64(get_unaligned_be64(accum) * 1000000ULL, divisor);
}
