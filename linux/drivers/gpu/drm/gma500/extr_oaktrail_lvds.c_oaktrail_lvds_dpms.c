
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int oaktrail_lvds_set_power (struct drm_device*,struct gma_encoder*,int) ;
 struct gma_encoder* to_gma_encoder (struct drm_encoder*) ;

__attribute__((used)) static void oaktrail_lvds_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct gma_encoder *gma_encoder = to_gma_encoder(encoder);

 if (mode == DRM_MODE_DPMS_ON)
  oaktrail_lvds_set_power(dev, gma_encoder, 1);
 else
  oaktrail_lvds_set_power(dev, gma_encoder, 0);


}
