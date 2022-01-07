
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bw_fixed {int value; } ;
typedef int int64_t ;


 int ASSERT (int) ;
 int abs_i64 (int) ;
 int div64_s64 (int,int) ;

struct bw_fixed bw_floor2(
 const struct bw_fixed arg,
 const struct bw_fixed significance)
{
 struct bw_fixed result;
 int64_t multiplicand;

 multiplicand = div64_s64(arg.value, abs_i64(significance.value));
 result.value = abs_i64(significance.value) * multiplicand;
 ASSERT(abs_i64(result.value) <= abs_i64(arg.value));
 return result;
}
