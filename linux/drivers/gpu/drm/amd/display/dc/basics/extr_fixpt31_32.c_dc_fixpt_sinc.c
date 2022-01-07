
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fixed31_32 {scalar_t__ value; } ;
struct TYPE_4__ {int value; } ;


 int dc_fixpt_abs (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_div (int ,struct fixed31_32) ;
 int dc_fixpt_div_int (int ,int) ;
 scalar_t__ dc_fixpt_le (TYPE_1__,int ) ;
 int dc_fixpt_mul (struct fixed31_32,struct fixed31_32) ;
 int dc_fixpt_mul_int (TYPE_1__,int) ;
 struct fixed31_32 dc_fixpt_one ;
 struct fixed31_32 dc_fixpt_sqr (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,int ) ;
 TYPE_1__ dc_fixpt_two_pi ;
 scalar_t__ div64_s64 (scalar_t__,int ) ;

struct fixed31_32 dc_fixpt_sinc(struct fixed31_32 arg)
{
 struct fixed31_32 square;

 struct fixed31_32 res = dc_fixpt_one;

 int n = 27;

 struct fixed31_32 arg_norm = arg;

 if (dc_fixpt_le(
  dc_fixpt_two_pi,
  dc_fixpt_abs(arg))) {
  arg_norm = dc_fixpt_sub(
   arg_norm,
   dc_fixpt_mul_int(
    dc_fixpt_two_pi,
    (int)div64_s64(
     arg_norm.value,
     dc_fixpt_two_pi.value)));
 }

 square = dc_fixpt_sqr(arg_norm);

 do {
  res = dc_fixpt_sub(
   dc_fixpt_one,
   dc_fixpt_div_int(
    dc_fixpt_mul(
     square,
     res),
    n * (n - 1)));

  n -= 2;
 } while (n > 2);

 if (arg.value != arg_norm.value)
  res = dc_fixpt_div(
   dc_fixpt_mul(res, arg_norm),
   arg);

 return res;
}
