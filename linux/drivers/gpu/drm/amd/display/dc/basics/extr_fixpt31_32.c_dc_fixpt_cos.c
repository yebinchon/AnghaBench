
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int dummy; } ;


 int dc_fixpt_div_int (int ,int) ;
 int dc_fixpt_mul (struct fixed31_32 const,struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_one ;
 struct fixed31_32 dc_fixpt_sqr (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,int ) ;

struct fixed31_32 dc_fixpt_cos(struct fixed31_32 arg)
{


 const struct fixed31_32 square = dc_fixpt_sqr(arg);

 struct fixed31_32 res = dc_fixpt_one;

 int n = 26;

 do {
  res = dc_fixpt_sub(
   dc_fixpt_one,
   dc_fixpt_div_int(
    dc_fixpt_mul(
     square,
     res),
    n * (n - 1)));

  n -= 2;
 } while (n != 0);

 return res;
}
