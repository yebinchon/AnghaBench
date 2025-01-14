
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rv6xx_power_info {int fb_div_scale; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int dummy; } ;


 int COMPUTE_MEMORY_PLL_PARAM ;
 scalar_t__ radeon_atom_get_clock_dividers (struct radeon_device*,int ,scalar_t__,int,struct atom_clock_dividers*) ;
 scalar_t__ rv6xx_calculate_vco_frequency (scalar_t__,struct atom_clock_dividers*,int ) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_find_memory_clock_with_highest_vco(struct radeon_device *rdev,
           u32 requested_memory_clock,
           u32 ref_clk,
           struct atom_clock_dividers *dividers,
           u32 *vco_freq)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 struct atom_clock_dividers req_dividers;
 u32 vco_freq_temp;

 if (radeon_atom_get_clock_dividers(rdev, COMPUTE_MEMORY_PLL_PARAM,
        requested_memory_clock, 0, &req_dividers) == 0) {
  vco_freq_temp = rv6xx_calculate_vco_frequency(ref_clk, &req_dividers,
             pi->fb_div_scale);

  if (vco_freq_temp > *vco_freq) {
   *dividers = req_dividers;
   *vco_freq = vco_freq_temp;
  }
 }
}
