
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int saveBLC_PWM_CTL; } ;
struct drm_psb_private {TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BACKLIGHT_DUTY_CYCLE_SHIFT ;
 int BLC_PWM_CTL ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;

__attribute__((used)) static void psb_intel_lvds_set_backlight(struct drm_device *dev, int level)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 u32 blc_pwm_ctl;

 if (gma_power_begin(dev, 0)) {
  blc_pwm_ctl = REG_READ(BLC_PWM_CTL);
  blc_pwm_ctl &= ~BACKLIGHT_DUTY_CYCLE_MASK;
  REG_WRITE(BLC_PWM_CTL,
    (blc_pwm_ctl |
    (level << BACKLIGHT_DUTY_CYCLE_SHIFT)));
  dev_priv->regs.saveBLC_PWM_CTL = (blc_pwm_ctl |
     (level << BACKLIGHT_DUTY_CYCLE_SHIFT));
  gma_power_end(dev);
 } else {
  blc_pwm_ctl = dev_priv->regs.saveBLC_PWM_CTL &
    ~BACKLIGHT_DUTY_CYCLE_MASK;
  dev_priv->regs.saveBLC_PWM_CTL = (blc_pwm_ctl |
     (level << BACKLIGHT_DUTY_CYCLE_SHIFT));
 }
}
