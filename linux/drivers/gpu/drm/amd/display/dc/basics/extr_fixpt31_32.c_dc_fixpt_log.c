
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {scalar_t__ value; } ;


 int ASSERT (int) ;
 unsigned long long abs_i64 (scalar_t__) ;
 struct fixed31_32 dc_fixpt_add (struct fixed31_32,int ) ;
 int dc_fixpt_div (struct fixed31_32,int ) ;
 int dc_fixpt_exp (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_neg (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_one ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,struct fixed31_32) ;

struct fixed31_32 dc_fixpt_log(struct fixed31_32 arg)
{
 struct fixed31_32 res = dc_fixpt_neg(dc_fixpt_one);


 struct fixed31_32 error;

 ASSERT(arg.value > 0);



 do {
  struct fixed31_32 res1 = dc_fixpt_add(
   dc_fixpt_sub(
    res,
    dc_fixpt_one),
   dc_fixpt_div(
    arg,
    dc_fixpt_exp(res)));

  error = dc_fixpt_sub(
   res,
   res1);

  res = res1;

 } while (abs_i64(error.value) > 100ULL);

 return res;
}
