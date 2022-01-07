
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



int drm_dp_bw_code_to_link_rate(u8 link_bw)
{

 return link_bw * 27000;
}
