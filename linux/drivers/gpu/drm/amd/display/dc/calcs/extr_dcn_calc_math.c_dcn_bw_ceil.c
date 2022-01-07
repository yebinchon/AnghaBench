
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float dcn_bw_floor2 (float const,int) ;

float dcn_bw_ceil(const float arg)
{
 float flr = dcn_bw_floor2(arg, 1);

 return flr + 0.00001 >= arg ? arg : flr + 1;
}
