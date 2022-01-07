
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {scalar_t__ max_voltage; scalar_t__ min_voltage; } ;


 int FORCE_STARTING_PWM_HIGHTIME ;
 int FVTHROT_PWM_CTRL_REG0 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG1 ;
 int GFX_MACRO_BYPASS_CNTL ;
 int RANGE_PWM_FEEDBACK_DIV_EN ;
 scalar_t__ RS780_VDDC_LEVEL_HIGH ;
 int SPLL_BYPASS_CNTL ;
 int STARTING_PWM_HIGHTIME (int ) ;
 int STARTING_PWM_HIGHTIME_MASK ;
 int WREG32_P (int ,int ,int ) ;
 struct igp_ps* rs780_get_ps (int ) ;
 int udelay (int) ;

__attribute__((used)) static void rs780_force_voltage(struct radeon_device *rdev, u16 voltage)
{
 struct igp_ps *current_state = rs780_get_ps(rdev->pm.dpm.current_ps);

 if ((current_state->max_voltage == RS780_VDDC_LEVEL_HIGH) &&
     (current_state->min_voltage == RS780_VDDC_LEVEL_HIGH))
  return;

 WREG32_P(GFX_MACRO_BYPASS_CNTL, SPLL_BYPASS_CNTL, ~SPLL_BYPASS_CNTL);

 udelay(1);

 WREG32_P(FVTHROT_PWM_CTRL_REG0,
   STARTING_PWM_HIGHTIME(voltage),
   ~STARTING_PWM_HIGHTIME_MASK);

 WREG32_P(FVTHROT_PWM_CTRL_REG0,
   FORCE_STARTING_PWM_HIGHTIME, ~FORCE_STARTING_PWM_HIGHTIME);

 WREG32_P(FVTHROT_PWM_FEEDBACK_DIV_REG1, 0,
  ~RANGE_PWM_FEEDBACK_DIV_EN);

 udelay(1);

 WREG32_P(GFX_MACRO_BYPASS_CNTL, 0, ~SPLL_BYPASS_CNTL);
}
