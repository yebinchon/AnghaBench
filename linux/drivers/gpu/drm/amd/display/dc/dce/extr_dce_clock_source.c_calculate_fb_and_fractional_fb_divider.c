
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct calc_pll_clock_source {unsigned long long ref_freq_khz; unsigned long long fract_fb_divider_precision_factor; scalar_t__ fract_fb_divider_factor; } ;


 int div_u64 (int,int) ;
 int div_u64_rem (int,scalar_t__,int*) ;

__attribute__((used)) static bool calculate_fb_and_fractional_fb_divider(
  struct calc_pll_clock_source *calc_pll_cs,
  uint32_t target_pix_clk_100hz,
  uint32_t ref_divider,
  uint32_t post_divider,
  uint32_t *feedback_divider_param,
  uint32_t *fract_feedback_divider_param)
{
 uint64_t feedback_divider;

 feedback_divider =
  (uint64_t)target_pix_clk_100hz * ref_divider * post_divider;
 feedback_divider *= 10;

 feedback_divider *= (uint64_t)(calc_pll_cs->fract_fb_divider_factor);
 feedback_divider = div_u64(feedback_divider, calc_pll_cs->ref_freq_khz * 10ull);







 feedback_divider += 5ULL *
       calc_pll_cs->fract_fb_divider_precision_factor;
 feedback_divider =
  div_u64(feedback_divider,
   calc_pll_cs->fract_fb_divider_precision_factor * 10);
 feedback_divider *= (uint64_t)
   (calc_pll_cs->fract_fb_divider_precision_factor);

 *feedback_divider_param =
  div_u64_rem(
   feedback_divider,
   calc_pll_cs->fract_fb_divider_factor,
   fract_feedback_divider_param);

 if (*feedback_divider_param != 0)
  return 1;
 return 0;
}
