
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {scalar_t__ max_voltage; scalar_t__ min_voltage; } ;
struct igp_power_info {int max_voltage; } ;
typedef enum rs780_vddc_level { ____Placeholder_rs780_vddc_level } rs780_vddc_level ;


 int FORCE_STARTING_PWM_HIGHTIME ;
 int FVTHROT_PWM_CTRL_REG0 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG1 ;
 int GFX_MACRO_BYPASS_CNTL ;
 int RANGE_PWM_FEEDBACK_DIV_EN ;
 scalar_t__ RS780_VDDC_LEVEL_HIGH ;
 int SPLL_BYPASS_CNTL ;
 int STARTING_PWM_HIGHTIME (int) ;
 int STARTING_PWM_HIGHTIME_MASK ;
 int WREG32_P (int ,int ,int ) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;
 int rs780_get_voltage_for_vddc_level (struct radeon_device*,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void rs780_enable_voltage_scaling(struct radeon_device *rdev,
      struct radeon_ps *new_ps)
{
 struct igp_ps *new_state = rs780_get_ps(new_ps);
 struct igp_power_info *pi = rs780_get_pi(rdev);
 enum rs780_vddc_level vddc_high, vddc_low;

 udelay(100);

 if ((new_state->max_voltage == RS780_VDDC_LEVEL_HIGH) &&
     (new_state->min_voltage == RS780_VDDC_LEVEL_HIGH))
  return;

 vddc_high = rs780_get_voltage_for_vddc_level(rdev,
           new_state->max_voltage);
 vddc_low = rs780_get_voltage_for_vddc_level(rdev,
          new_state->min_voltage);

 WREG32_P(GFX_MACRO_BYPASS_CNTL, SPLL_BYPASS_CNTL, ~SPLL_BYPASS_CNTL);

 udelay(1);
 if (vddc_high > vddc_low) {
  WREG32_P(FVTHROT_PWM_FEEDBACK_DIV_REG1,
    RANGE_PWM_FEEDBACK_DIV_EN, ~RANGE_PWM_FEEDBACK_DIV_EN);

  WREG32_P(FVTHROT_PWM_CTRL_REG0, 0, ~FORCE_STARTING_PWM_HIGHTIME);
 } else if (vddc_high == vddc_low) {
  if (pi->max_voltage != vddc_high) {
   WREG32_P(FVTHROT_PWM_CTRL_REG0,
     STARTING_PWM_HIGHTIME(vddc_high),
     ~STARTING_PWM_HIGHTIME_MASK);

   WREG32_P(FVTHROT_PWM_CTRL_REG0,
     FORCE_STARTING_PWM_HIGHTIME,
     ~FORCE_STARTING_PWM_HIGHTIME);
  }
 }

 WREG32_P(GFX_MACRO_BYPASS_CNTL, 0, ~SPLL_BYPASS_CNTL);
}
