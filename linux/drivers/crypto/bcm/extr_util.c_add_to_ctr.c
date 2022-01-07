
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int __be64 ;


 scalar_t__ __be64_to_cpu (int ) ;
 int __cpu_to_be64 (scalar_t__) ;

void add_to_ctr(u8 *ctr_pos, unsigned int increment)
{
 __be64 *high_be = (__be64 *)ctr_pos;
 __be64 *low_be = high_be + 1;
 u64 orig_low = __be64_to_cpu(*low_be);
 u64 new_low = orig_low + (u64)increment;

 *low_be = __cpu_to_be64(new_low);
 if (new_low < orig_low)

  *high_be = __cpu_to_be64(__be64_to_cpu(*high_be) + 1);
}
