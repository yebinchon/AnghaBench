
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cdv_intel_dp_link_required(int pixel_clock, int bpp)
{
 return (pixel_clock * bpp + 7) / 8;
}
