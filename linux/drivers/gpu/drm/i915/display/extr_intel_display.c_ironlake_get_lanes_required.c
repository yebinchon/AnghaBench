
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int,int) ;

int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp)
{





 u32 bps = target_clock * bpp * 21 / 20;
 return DIV_ROUND_UP(bps, link_bw * 8);
}
