
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {int sclk_low; } ;
struct atom_clock_dividers {scalar_t__ enable_post_div; int post_div; int fb_div; int ref_div; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int R600_PM_NUMBER_OF_SCLKS ;
 int R600_SST_DFLT ;
 int r600_enable_mclk_control (struct radeon_device*,int) ;
 int r600_engine_clock_entry_enable (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_enable_post_divider (struct radeon_device*,int ,int) ;
 int r600_engine_clock_entry_enable_pulse_skipping (struct radeon_device*,int ,int) ;
 int r600_engine_clock_entry_set_feedback_divider (struct radeon_device*,int ,int ) ;
 int r600_engine_clock_entry_set_post_divider (struct radeon_device*,int ,int ) ;
 int r600_engine_clock_entry_set_reference_divider (struct radeon_device*,int ,int ) ;
 int r600_engine_clock_entry_set_step_time (struct radeon_device*,int ,int ) ;
 int r600_voltage_control_enable_pins (struct radeon_device*,int ) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;

__attribute__((used)) static int rs780_initialize_dpm_power_state(struct radeon_device *rdev,
         struct radeon_ps *boot_ps)
{
 struct atom_clock_dividers dividers;
 struct igp_ps *default_state = rs780_get_ps(boot_ps);
 int i, ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          default_state->sclk_low, 0, &dividers);
 if (ret)
  return ret;

 r600_engine_clock_entry_set_reference_divider(rdev, 0, dividers.ref_div);
 r600_engine_clock_entry_set_feedback_divider(rdev, 0, dividers.fb_div);
 r600_engine_clock_entry_set_post_divider(rdev, 0, dividers.post_div);

 if (dividers.enable_post_div)
  r600_engine_clock_entry_enable_post_divider(rdev, 0, 1);
 else
  r600_engine_clock_entry_enable_post_divider(rdev, 0, 0);

 r600_engine_clock_entry_set_step_time(rdev, 0, R600_SST_DFLT);
 r600_engine_clock_entry_enable_pulse_skipping(rdev, 0, 0);

 r600_engine_clock_entry_enable(rdev, 0, 1);
 for (i = 1; i < R600_PM_NUMBER_OF_SCLKS; i++)
  r600_engine_clock_entry_enable(rdev, i, 0);

 r600_enable_mclk_control(rdev, 0);
 r600_voltage_control_enable_pins(rdev, 0);

 return 0;
}
