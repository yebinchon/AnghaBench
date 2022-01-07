
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isNaN (float const) ;

float dcn_bw_min2(const float arg1, const float arg2)
{
 if (isNaN(arg1))
  return arg2;
 if (isNaN(arg2))
  return arg1;
 return arg1 < arg2 ? arg1 : arg2;
}
