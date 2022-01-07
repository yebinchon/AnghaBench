
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATOM_EXT_PLL1 ;
 scalar_t__ ENCODER_MODE_IS_DP (int ) ;

__attribute__((used)) static bool is_pixel_clock_source_from_pll(u32 encoder_mode, int pll_id)
{
 if (ENCODER_MODE_IS_DP(encoder_mode)) {
  if (pll_id < ATOM_EXT_PLL1)
   return 1;
  else
   return 0;
 } else {
  return 1;
 }
}
