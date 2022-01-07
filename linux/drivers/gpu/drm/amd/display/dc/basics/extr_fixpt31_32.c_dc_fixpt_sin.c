
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int dummy; } ;


 struct fixed31_32 dc_fixpt_mul (struct fixed31_32,int ) ;
 int dc_fixpt_sinc (struct fixed31_32) ;

struct fixed31_32 dc_fixpt_sin(struct fixed31_32 arg)
{
 return dc_fixpt_mul(
  arg,
  dc_fixpt_sinc(arg));
}
