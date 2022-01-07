
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_psb_private {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;


 int HISTOGRAM_INT_CONTROL ;
 int PIPE_DPST_EVENT_ENABLE ;
 int PSB_RVDC32 (int ) ;
 int PSB_WVDC32 (int,int ) ;
 int PWM_CONTROL_LOGIC ;
 int PWM_PHASEIN_INT_ENABLE ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int psb_disable_pipestat (struct drm_psb_private*,int ,int ) ;

void psb_irq_turn_off_dpst(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv =
     (struct drm_psb_private *) dev->dev_private;
 u32 hist_reg;
 u32 pwm_reg;

 if (gma_power_begin(dev, 0)) {
  PSB_WVDC32(0x00000000, HISTOGRAM_INT_CONTROL);
  hist_reg = PSB_RVDC32(HISTOGRAM_INT_CONTROL);

  psb_disable_pipestat(dev_priv, 0, PIPE_DPST_EVENT_ENABLE);

  pwm_reg = PSB_RVDC32(PWM_CONTROL_LOGIC);
  PSB_WVDC32(pwm_reg & ~PWM_PHASEIN_INT_ENABLE,
       PWM_CONTROL_LOGIC);
  pwm_reg = PSB_RVDC32(PWM_CONTROL_LOGIC);

  gma_power_end(dev);
 }
}
