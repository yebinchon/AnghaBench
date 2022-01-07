
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {scalar_t__ value; } ;


 int ASSERT (int) ;
 int dc_fixpt_abs (struct fixed31_32) ;
 int dc_fixpt_div (struct fixed31_32,int ) ;
 struct fixed31_32 dc_fixpt_div_int (struct fixed31_32,long long) ;
 scalar_t__ dc_fixpt_le (int ,int ) ;
 int dc_fixpt_ln2 ;
 int dc_fixpt_ln2_div_2 ;
 int dc_fixpt_lt (int ,struct fixed31_32) ;
 int dc_fixpt_mul_int (int ,int) ;
 struct fixed31_32 dc_fixpt_one ;
 int dc_fixpt_round (int ) ;
 struct fixed31_32 dc_fixpt_shl (struct fixed31_32,unsigned char) ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,int ) ;
 struct fixed31_32 fixed31_32_exp_from_taylor_series (struct fixed31_32) ;

struct fixed31_32 dc_fixpt_exp(struct fixed31_32 arg)
{







 if (dc_fixpt_le(
  dc_fixpt_ln2_div_2,
  dc_fixpt_abs(arg))) {
  int m = dc_fixpt_round(
   dc_fixpt_div(
    arg,
    dc_fixpt_ln2));

  struct fixed31_32 r = dc_fixpt_sub(
   arg,
   dc_fixpt_mul_int(
    dc_fixpt_ln2,
    m));

  ASSERT(m != 0);

  ASSERT(dc_fixpt_lt(
   dc_fixpt_abs(r),
   dc_fixpt_one));

  if (m > 0)
   return dc_fixpt_shl(
    fixed31_32_exp_from_taylor_series(r),
    (unsigned char)m);
  else
   return dc_fixpt_div_int(
    fixed31_32_exp_from_taylor_series(r),
    1LL << -m);
 } else if (arg.value != 0)
  return fixed31_32_exp_from_taylor_series(arg);
 else
  return dc_fixpt_one;
}
