
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int mode_dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int DP_B ;
 int DP_C ;
 int DP_DETECTED ;
 int REG_READ (int ) ;
 int SDVOB ;
 int SDVOC ;
 int SDVO_DETECTED ;
 int cdv_disable_vga (struct drm_device*) ;
 int cdv_hdmi_init (struct drm_device*,int *,int ) ;
 int cdv_intel_crt_init (struct drm_device*,int *) ;
 int cdv_intel_dp_init (struct drm_device*,int *,int ) ;
 int cdv_intel_lvds_init (struct drm_device*,int *) ;
 int drm_mode_create_scaling_mode_property (struct drm_device*) ;

__attribute__((used)) static int cdv_output_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;

 drm_mode_create_scaling_mode_property(dev);

 cdv_disable_vga(dev);

 cdv_intel_crt_init(dev, &dev_priv->mode_dev);
 cdv_intel_lvds_init(dev, &dev_priv->mode_dev);


 if (REG_READ(SDVOB) & SDVO_DETECTED) {
  cdv_hdmi_init(dev, &dev_priv->mode_dev, SDVOB);
  if (REG_READ(DP_B) & DP_DETECTED)
   cdv_intel_dp_init(dev, &dev_priv->mode_dev, DP_B);
 }

 if (REG_READ(SDVOC) & SDVO_DETECTED) {
  cdv_hdmi_init(dev, &dev_priv->mode_dev, SDVOC);
  if (REG_READ(DP_C) & DP_DETECTED)
   cdv_intel_dp_init(dev, &dev_priv->mode_dev, DP_C);
 }
 return 0;
}
