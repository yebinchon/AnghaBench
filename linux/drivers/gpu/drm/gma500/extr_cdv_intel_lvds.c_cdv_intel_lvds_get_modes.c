
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_mode_device {int * panel_fixed_mode; } ;
struct gma_encoder {TYPE_1__* i2c_bus; } ;
struct drm_psb_private {struct psb_intel_mode_device mode_dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int adapter; } ;


 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int psb_intel_ddc_get_modes (struct drm_connector*,int *) ;

__attribute__((used)) static int cdv_intel_lvds_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
 int ret;

 ret = psb_intel_ddc_get_modes(connector, &gma_encoder->i2c_bus->adapter);

 if (ret)
  return ret;

 if (mode_dev->panel_fixed_mode != ((void*)0)) {
  struct drm_display_mode *mode =
      drm_mode_duplicate(dev, mode_dev->panel_fixed_mode);
  drm_mode_probed_add(connector, mode);
  return 1;
 }

 return 0;
}
