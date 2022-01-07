
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_psb_private {TYPE_1__* lvds_bl; } ;
struct drm_device {int dev; scalar_t__ dev_private; } ;
struct TYPE_2__ {scalar_t__ pol; } ;


 scalar_t__ BLC_POLARITY_INVERSE ;
 int BLC_PWM_CTL ;
 int BRIGHTNESS_MAX_LEVEL ;
 int BUG_ON (int) ;
 int PSB_BACKLIGHT_PWM_CTL_SHIFT ;
 int PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR ;
 int REG_WRITE (int ,int) ;
 int dev_info (int ,char*,int) ;
 int psb_intel_lvds_get_max_backlight (struct drm_device*) ;

__attribute__((used)) static int psb_lvds_pwm_set_brightness(struct drm_device *dev, int level)
{
 struct drm_psb_private *dev_priv =
   (struct drm_psb_private *)dev->dev_private;

 u32 max_pwm_blc;
 u32 blc_pwm_duty_cycle;

 max_pwm_blc = psb_intel_lvds_get_max_backlight(dev);


 BUG_ON(max_pwm_blc == 0);

 blc_pwm_duty_cycle = level * max_pwm_blc / BRIGHTNESS_MAX_LEVEL;

 if (dev_priv->lvds_bl->pol == BLC_POLARITY_INVERSE)
  blc_pwm_duty_cycle = max_pwm_blc - blc_pwm_duty_cycle;

 blc_pwm_duty_cycle &= PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR;
 REG_WRITE(BLC_PWM_CTL,
    (max_pwm_blc << PSB_BACKLIGHT_PWM_CTL_SHIFT) |
    (blc_pwm_duty_cycle));

        dev_info(dev->dev, "Backlight lvds set brightness %08x\n",
    (max_pwm_blc << PSB_BACKLIGHT_PWM_CTL_SHIFT) |
    (blc_pwm_duty_cycle));

 return 0;
}
