
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_mode_device {int backlight_duty_cycle; } ;
struct drm_psb_private {struct psb_intel_mode_device mode_dev; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int POWER_TARGET_ON ;
 int PP_CONTROL ;
 int PP_ON ;
 int PP_STATUS ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int dev_err (int ,char*) ;
 int gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int psb_intel_lvds_set_backlight (struct drm_device*,int ) ;

__attribute__((used)) static void psb_intel_lvds_set_power(struct drm_device *dev, bool on)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
 u32 pp_status;

 if (!gma_power_begin(dev, 1)) {
         dev_err(dev->dev, "set power, chip off!\n");
  return;
        }

 if (on) {
  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) |
     POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while ((pp_status & PP_ON) == 0);

  psb_intel_lvds_set_backlight(dev,
          mode_dev->backlight_duty_cycle);
 } else {
  psb_intel_lvds_set_backlight(dev, 0);

  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) &
     ~POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while (pp_status & PP_ON);
 }

 gma_power_end(dev);
}
