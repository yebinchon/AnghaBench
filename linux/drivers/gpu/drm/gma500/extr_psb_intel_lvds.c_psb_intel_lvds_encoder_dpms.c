
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int psb_intel_lvds_set_power (struct drm_device*,int) ;

__attribute__((used)) static void psb_intel_lvds_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;

 if (mode == DRM_MODE_DPMS_ON)
  psb_intel_lvds_set_power(dev, 1);
 else
  psb_intel_lvds_set_power(dev, 0);


}
