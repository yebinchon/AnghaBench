
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int do_div (int,int) ;

__attribute__((used)) static void
cdv_intel_reduce_ratio(uint32_t *num, uint32_t *den)
{





 uint64_t value, m;
 m = *num;
 value = m * (0x800000);
 m = do_div(value, *den);
 *num = value;
 *den = 0x800000;
}
