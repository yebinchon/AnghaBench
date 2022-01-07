
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float dcn_bw_floor2 (float const,float const) ;

float dcn_bw_ceil2(const float arg, const float significance)
{
 float flr = dcn_bw_floor2(arg, significance);
 if (significance == 0)
  return 0;
 return flr + 0.00001 >= arg ? arg : flr + significance;
}
