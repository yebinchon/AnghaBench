
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int s64 ;


 int drm_fixp2int_ceil (int ) ;
 int drm_fixp_from_fraction (int,int) ;

int drm_dp_calc_pbn_mode(int clock, int bpp)
{
 u64 kbps;
 s64 peak_kbps;
 u32 numerator;
 u32 denominator;

 kbps = clock * bpp;
 numerator = 64 * 1006;
 denominator = 54 * 8 * 1000 * 1000;

 kbps *= numerator;
 peak_kbps = drm_fixp_from_fraction(kbps, denominator);

 return drm_fixp2int_ceil(peak_kbps);
}
