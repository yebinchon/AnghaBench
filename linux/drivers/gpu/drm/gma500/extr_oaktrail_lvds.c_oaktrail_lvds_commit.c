
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_mode_device {scalar_t__ backlight_duty_cycle; } ;
struct gma_encoder {int dummy; } ;
struct drm_psb_private {struct psb_intel_mode_device mode_dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ oaktrail_lvds_get_max_backlight (struct drm_device*) ;
 int oaktrail_lvds_set_power (struct drm_device*,struct gma_encoder*,int) ;
 struct gma_encoder* to_gma_encoder (struct drm_encoder*) ;

__attribute__((used)) static void oaktrail_lvds_commit(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_encoder *gma_encoder = to_gma_encoder(encoder);
 struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;

 if (mode_dev->backlight_duty_cycle == 0)
  mode_dev->backlight_duty_cycle =
     oaktrail_lvds_get_max_backlight(dev);
 oaktrail_lvds_set_power(dev, gma_encoder, 1);
}
