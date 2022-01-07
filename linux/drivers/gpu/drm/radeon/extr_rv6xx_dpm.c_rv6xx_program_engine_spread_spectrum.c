
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rv6xx_power_info {int fb_div_scale; scalar_t__ sclk_ss; } ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;
struct radeon_atom_ss {int rate; int percentage; } ;
struct atom_clock_dividers {int ref_div; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;


 int ASIC_INTERNAL_ENGINE_SS ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 scalar_t__ radeon_atom_get_clock_dividers (struct radeon_device*,int ,int,int,struct atom_clock_dividers*) ;
 scalar_t__ radeon_atombios_get_asic_ss_info (struct radeon_device*,struct radeon_atom_ss*,int ,int) ;
 int rv6xx_calculate_spread_spectrum_clk_s (int ,int) ;
 int rv6xx_calculate_spread_spectrum_clk_v (int,int,int ,int ,int ) ;
 int rv6xx_calculate_vco_frequency (int,struct atom_clock_dividers*,int ) ;
 int rv6xx_enable_engine_spread_spectrum (struct radeon_device*,int,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_set_engine_spread_spectrum_clk_s (struct radeon_device*,int,int) ;
 int rv6xx_set_engine_spread_spectrum_clk_v (struct radeon_device*,int,int) ;

__attribute__((used)) static void rv6xx_program_engine_spread_spectrum(struct radeon_device *rdev,
       u32 clock, enum r600_power_level level)
{
 u32 ref_clk = rdev->clock.spll.reference_freq;
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 struct atom_clock_dividers dividers;
 struct radeon_atom_ss ss;
 u32 vco_freq, clk_v, clk_s;

 rv6xx_enable_engine_spread_spectrum(rdev, level, 0);

 if (clock && pi->sclk_ss) {
  if (radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM, clock, 0, &dividers) == 0) {
   vco_freq = rv6xx_calculate_vco_frequency(ref_clk, &dividers,
         pi->fb_div_scale);

   if (radeon_atombios_get_asic_ss_info(rdev, &ss,
            ASIC_INTERNAL_ENGINE_SS, vco_freq)) {
    clk_v = rv6xx_calculate_spread_spectrum_clk_v(vco_freq,
               (ref_clk / (dividers.ref_div + 1)),
               ss.rate,
               ss.percentage,
               pi->fb_div_scale);

    clk_s = rv6xx_calculate_spread_spectrum_clk_s(ss.rate,
               (ref_clk / (dividers.ref_div + 1)));

    rv6xx_set_engine_spread_spectrum_clk_v(rdev, level, clk_v);
    rv6xx_set_engine_spread_spectrum_clk_s(rdev, level, clk_s);
    rv6xx_enable_engine_spread_spectrum(rdev, level, 1);
   }
  }
 }
}
