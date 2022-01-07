
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float dcn_bw_max2 (float,float) ;

float dcn_bw_max3(float v1, float v2, float v3)
{
 return v3 > dcn_bw_max2(v1, v2) ? v3 : dcn_bw_max2(v1, v2);
}
