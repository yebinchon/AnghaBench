
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int saveBLC_PWM_CTL; } ;
struct drm_psb_private {TYPE_1__ regs; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int BACKLIGHT_MODULATION_FREQ_MASK ;
 int BACKLIGHT_MODULATION_FREQ_SHIFT ;
 int BLC_PWM_CTL ;
 int REG_READ (int ) ;
 int dev_err (int ,char*,int,int) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;

__attribute__((used)) static u32 psb_intel_lvds_get_max_backlight(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 u32 ret;

 if (gma_power_begin(dev, 0)) {
  ret = REG_READ(BLC_PWM_CTL);
  gma_power_end(dev);
 } else
  ret = dev_priv->regs.saveBLC_PWM_CTL;


 ret = (ret & BACKLIGHT_MODULATION_FREQ_MASK) >>
     BACKLIGHT_MODULATION_FREQ_SHIFT;

        ret *= 2;
        if (ret == 0)
                dev_err(dev->dev, "BL bug: Reg %08x save %08X\n",
                        REG_READ(BLC_PWM_CTL), dev_priv->regs.saveBLC_PWM_CTL);
 return ret;
}
