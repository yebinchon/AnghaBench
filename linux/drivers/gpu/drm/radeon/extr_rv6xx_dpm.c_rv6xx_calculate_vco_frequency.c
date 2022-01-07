
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atom_clock_dividers {int fb_div; int ref_div; } ;



__attribute__((used)) static inline u32 rv6xx_calculate_vco_frequency(u32 ref_clock,
      struct atom_clock_dividers *dividers,
      u32 fb_divider_scale)
{
 return ref_clock * ((dividers->fb_div & ~1) << fb_divider_scale) /
  (dividers->ref_div + 1);
}
