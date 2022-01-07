
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int forced_level; struct radeon_ps* current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {scalar_t__ sclk_high; scalar_t__ sclk_low; } ;
struct igp_power_info {scalar_t__ voltage_control; int max_voltage; int min_voltage; } ;
struct atom_clock_dividers {int fb_div; } ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int FORCE_FEEDBACK_DIV ;
 int FVTHROT_FBDIV_REG1 ;
 int RADEON_DPM_FORCED_LEVEL_HIGH ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 int WREG32_P (int ,int ,int ) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,scalar_t__,int,struct atom_clock_dividers*) ;
 int rs780_clk_scaling_enable (struct radeon_device*,int) ;
 int rs780_enable_voltage_scaling (struct radeon_device*,struct radeon_ps*) ;
 int rs780_force_fbdiv (struct radeon_device*,int ) ;
 int rs780_force_voltage (struct radeon_device*,int ) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;
 int rs780_voltage_scaling_enable (struct radeon_device*,int) ;

int rs780_dpm_force_performance_level(struct radeon_device *rdev,
          enum radeon_dpm_forced_level level)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);
 struct radeon_ps *rps = rdev->pm.dpm.current_ps;
 struct igp_ps *ps = rs780_get_ps(rps);
 struct atom_clock_dividers dividers;
 int ret;

 rs780_clk_scaling_enable(rdev, 0);
 rs780_voltage_scaling_enable(rdev, 0);

 if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
  if (pi->voltage_control)
   rs780_force_voltage(rdev, pi->max_voltage);

  ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
           ps->sclk_high, 0, &dividers);
  if (ret)
   return ret;

  rs780_force_fbdiv(rdev, dividers.fb_div);
 } else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
  ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
           ps->sclk_low, 0, &dividers);
  if (ret)
   return ret;

  rs780_force_fbdiv(rdev, dividers.fb_div);

  if (pi->voltage_control)
   rs780_force_voltage(rdev, pi->min_voltage);
 } else {
  if (pi->voltage_control)
   rs780_force_voltage(rdev, pi->max_voltage);

  if (ps->sclk_high != ps->sclk_low) {
   WREG32_P(FVTHROT_FBDIV_REG1, 0, ~FORCE_FEEDBACK_DIV);
   rs780_clk_scaling_enable(rdev, 1);
  }

  if (pi->voltage_control) {
   rs780_voltage_scaling_enable(rdev, 1);
   rs780_enable_voltage_scaling(rdev, rps);
  }
 }

 rdev->pm.dpm.forced_level = level;

 return 0;
}
