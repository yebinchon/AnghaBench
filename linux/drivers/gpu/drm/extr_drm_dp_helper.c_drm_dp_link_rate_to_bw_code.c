
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 drm_dp_link_rate_to_bw_code(int link_rate)
{

 return link_rate / 27000;
}
