
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {struct drm_device* ddev; } ;
struct igp_power_info {int max_voltage; int min_voltage; scalar_t__ invert_pwm_required; int num_of_cycles_in_period; scalar_t__ pwm_voltage_control; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int FORCE_STARTING_PWM_HIGHTIME ;
 int FVTHROT_PWM_CTRL_REG0 ;
 int FVTHROT_PWM_CTRL_REG1 ;
 int FVTHROT_PWM_DS_REG0 ;
 int FVTHROT_PWM_DS_REG1 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG1 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG2 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG3 ;
 int FVTHROT_PWM_FEEDBACK_DIV_REG4 ;
 int FVTHROT_PWM_US_REG0 ;
 int FVTHROT_PWM_US_REG1 ;
 int INVERT_PWM_WAVEFORM ;
 int MAX_PWM_HIGHTIME (int ) ;
 int MIN_PWM_HIGHTIME (int ) ;
 int NUMBER_OF_CYCLES_IN_PERIOD (int ) ;
 int NUMBER_OF_CYCLES_IN_PERIOD_MASK ;
 int RANGE0_PWM (int ) ;
 int RANGE0_PWM_FEEDBACK_DIV (int ) ;
 int RANGE0_PWM_FEEDBACK_DIV_MASK ;
 int RANGE1_PWM (int ) ;
 int RANGE1_PWM_FEEDBACK_DIV (int ) ;
 int RANGE2_PWM (int ) ;
 int RANGE2_PWM_FEEDBACK_DIV (int ) ;
 int RANGE3_PWM (int ) ;
 int RS780D_FVTHROTPWMFBDIVRANGEREG0_DFLT ;
 int RS780D_FVTHROTPWMFBDIVRANGEREG1_DFLT ;
 int RS780D_FVTHROTPWMFBDIVRANGEREG2_DFLT ;
 int RS780_FVTHROTPWMDSREG0_DFLT ;
 int RS780_FVTHROTPWMDSREG1_DFLT ;
 int RS780_FVTHROTPWMFBDIVRANGEREG0_DFLT ;
 int RS780_FVTHROTPWMFBDIVRANGEREG1_DFLT ;
 int RS780_FVTHROTPWMFBDIVRANGEREG2_DFLT ;
 int RS780_FVTHROTPWMRANGE0_GPIO_DFLT ;
 int RS780_FVTHROTPWMRANGE1_GPIO_DFLT ;
 int RS780_FVTHROTPWMRANGE2_GPIO_DFLT ;
 int RS780_FVTHROTPWMRANGE3_GPIO_DFLT ;
 int RS780_FVTHROTPWMUSREG0_DFLT ;
 int RS780_FVTHROTPWMUSREG1_DFLT ;
 int RS880D_FVTHROTPWMFBDIVRANGEREG0_DFLT ;
 int RS880D_FVTHROTPWMFBDIVRANGEREG1_DFLT ;
 int RS880D_FVTHROTPWMFBDIVRANGEREG2_DFLT ;
 int STARTING_PWM_HIGHTIME (int ) ;
 int STARTING_PWM_HIGHTIME_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;
 int rs780_voltage_scaling_enable (struct radeon_device*,int) ;

__attribute__((used)) static void rs780_voltage_scaling_init(struct radeon_device *rdev)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);
 struct drm_device *dev = rdev->ddev;
 u32 fv_throt_pwm_fb_div_range[3];
 u32 fv_throt_pwm_range[4];

 if (dev->pdev->device == 0x9614) {
  fv_throt_pwm_fb_div_range[0] = RS780D_FVTHROTPWMFBDIVRANGEREG0_DFLT;
  fv_throt_pwm_fb_div_range[1] = RS780D_FVTHROTPWMFBDIVRANGEREG1_DFLT;
  fv_throt_pwm_fb_div_range[2] = RS780D_FVTHROTPWMFBDIVRANGEREG2_DFLT;
 } else if ((dev->pdev->device == 0x9714) ||
     (dev->pdev->device == 0x9715)) {
  fv_throt_pwm_fb_div_range[0] = RS880D_FVTHROTPWMFBDIVRANGEREG0_DFLT;
  fv_throt_pwm_fb_div_range[1] = RS880D_FVTHROTPWMFBDIVRANGEREG1_DFLT;
  fv_throt_pwm_fb_div_range[2] = RS880D_FVTHROTPWMFBDIVRANGEREG2_DFLT;
 } else {
  fv_throt_pwm_fb_div_range[0] = RS780_FVTHROTPWMFBDIVRANGEREG0_DFLT;
  fv_throt_pwm_fb_div_range[1] = RS780_FVTHROTPWMFBDIVRANGEREG1_DFLT;
  fv_throt_pwm_fb_div_range[2] = RS780_FVTHROTPWMFBDIVRANGEREG2_DFLT;
 }

 if (pi->pwm_voltage_control) {
  fv_throt_pwm_range[0] = pi->min_voltage;
  fv_throt_pwm_range[1] = pi->min_voltage;
  fv_throt_pwm_range[2] = pi->max_voltage;
  fv_throt_pwm_range[3] = pi->max_voltage;
 } else {
  fv_throt_pwm_range[0] = pi->invert_pwm_required ?
   RS780_FVTHROTPWMRANGE3_GPIO_DFLT : RS780_FVTHROTPWMRANGE0_GPIO_DFLT;
  fv_throt_pwm_range[1] = pi->invert_pwm_required ?
   RS780_FVTHROTPWMRANGE2_GPIO_DFLT : RS780_FVTHROTPWMRANGE1_GPIO_DFLT;
  fv_throt_pwm_range[2] = pi->invert_pwm_required ?
   RS780_FVTHROTPWMRANGE1_GPIO_DFLT : RS780_FVTHROTPWMRANGE2_GPIO_DFLT;
  fv_throt_pwm_range[3] = pi->invert_pwm_required ?
   RS780_FVTHROTPWMRANGE0_GPIO_DFLT : RS780_FVTHROTPWMRANGE3_GPIO_DFLT;
 }

 WREG32_P(FVTHROT_PWM_CTRL_REG0,
   STARTING_PWM_HIGHTIME(pi->max_voltage),
   ~STARTING_PWM_HIGHTIME_MASK);

 WREG32_P(FVTHROT_PWM_CTRL_REG0,
   NUMBER_OF_CYCLES_IN_PERIOD(pi->num_of_cycles_in_period),
   ~NUMBER_OF_CYCLES_IN_PERIOD_MASK);

 WREG32_P(FVTHROT_PWM_CTRL_REG0, FORCE_STARTING_PWM_HIGHTIME,
   ~FORCE_STARTING_PWM_HIGHTIME);

 if (pi->invert_pwm_required)
  WREG32_P(FVTHROT_PWM_CTRL_REG0, INVERT_PWM_WAVEFORM, ~INVERT_PWM_WAVEFORM);
 else
  WREG32_P(FVTHROT_PWM_CTRL_REG0, 0, ~INVERT_PWM_WAVEFORM);

 rs780_voltage_scaling_enable(rdev, 1);

 WREG32(FVTHROT_PWM_CTRL_REG1,
        (MIN_PWM_HIGHTIME(pi->min_voltage) |
  MAX_PWM_HIGHTIME(pi->max_voltage)));

 WREG32(FVTHROT_PWM_US_REG0, RS780_FVTHROTPWMUSREG0_DFLT);
 WREG32(FVTHROT_PWM_US_REG1, RS780_FVTHROTPWMUSREG1_DFLT);
 WREG32(FVTHROT_PWM_DS_REG0, RS780_FVTHROTPWMDSREG0_DFLT);
 WREG32(FVTHROT_PWM_DS_REG1, RS780_FVTHROTPWMDSREG1_DFLT);

 WREG32_P(FVTHROT_PWM_FEEDBACK_DIV_REG1,
   RANGE0_PWM_FEEDBACK_DIV(fv_throt_pwm_fb_div_range[0]),
   ~RANGE0_PWM_FEEDBACK_DIV_MASK);

 WREG32(FVTHROT_PWM_FEEDBACK_DIV_REG2,
        (RANGE1_PWM_FEEDBACK_DIV(fv_throt_pwm_fb_div_range[1]) |
  RANGE2_PWM_FEEDBACK_DIV(fv_throt_pwm_fb_div_range[2])));

 WREG32(FVTHROT_PWM_FEEDBACK_DIV_REG3,
        (RANGE0_PWM(fv_throt_pwm_range[1]) |
  RANGE1_PWM(fv_throt_pwm_range[2])));
 WREG32(FVTHROT_PWM_FEEDBACK_DIV_REG4,
        (RANGE2_PWM(fv_throt_pwm_range[1]) |
  RANGE3_PWM(fv_throt_pwm_range[2])));
}
