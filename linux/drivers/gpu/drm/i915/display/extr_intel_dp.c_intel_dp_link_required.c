
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,int) ;

int
intel_dp_link_required(int pixel_clock, int bpp)
{

 return DIV_ROUND_UP(pixel_clock * bpp, 8);
}
