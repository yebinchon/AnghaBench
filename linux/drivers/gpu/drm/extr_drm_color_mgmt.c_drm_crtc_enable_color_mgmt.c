
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct drm_mode_config {int gamma_lut_size_property; int gamma_lut_property; int ctm_property; int degamma_lut_size_property; int degamma_lut_property; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_crtc {int base; struct drm_device* dev; } ;


 int drm_object_attach_property (int *,int ,scalar_t__) ;

void drm_crtc_enable_color_mgmt(struct drm_crtc *crtc,
    uint degamma_lut_size,
    bool has_ctm,
    uint gamma_lut_size)
{
 struct drm_device *dev = crtc->dev;
 struct drm_mode_config *config = &dev->mode_config;

 if (degamma_lut_size) {
  drm_object_attach_property(&crtc->base,
        config->degamma_lut_property, 0);
  drm_object_attach_property(&crtc->base,
        config->degamma_lut_size_property,
        degamma_lut_size);
 }

 if (has_ctm)
  drm_object_attach_property(&crtc->base,
        config->ctm_property, 0);

 if (gamma_lut_size) {
  drm_object_attach_property(&crtc->base,
        config->gamma_lut_property, 0);
  drm_object_attach_property(&crtc->base,
        config->gamma_lut_size_property,
        gamma_lut_size);
 }
}
