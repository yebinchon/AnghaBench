
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kirin_drm_data {int mode_config_funcs; int config_max_width; } ;
struct TYPE_2__ {int num_crtc; int funcs; int max_height; int max_width; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {int irq_enabled; int dev; TYPE_1__ mode_config; } ;


 int DRM_ERROR (char*) ;
 int component_bind_all (int ,struct drm_device*) ;
 int component_unbind_all (int ,struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int kirin_drm_private_cleanup (struct drm_device*) ;
 int kirin_drm_private_init (struct drm_device*,struct kirin_drm_data const*) ;

__attribute__((used)) static int kirin_drm_kms_init(struct drm_device *dev,
         const struct kirin_drm_data *driver_data)
{
 int ret;


 drm_mode_config_init(dev);
 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;
 dev->mode_config.max_width = driver_data->config_max_width;
 dev->mode_config.max_height = driver_data->config_max_width;
 dev->mode_config.funcs = driver_data->mode_config_funcs;


 ret = kirin_drm_private_init(dev, driver_data);
 if (ret)
  goto err_mode_config_cleanup;


 ret = component_bind_all(dev->dev, dev);
 if (ret) {
  DRM_ERROR("failed to bind all component.\n");
  goto err_private_cleanup;
 }


 ret = drm_vblank_init(dev, dev->mode_config.num_crtc);
 if (ret) {
  DRM_ERROR("failed to initialize vblank.\n");
  goto err_unbind_all;
 }

 dev->irq_enabled = 1;


 drm_mode_config_reset(dev);


 drm_kms_helper_poll_init(dev);

 return 0;

err_unbind_all:
 component_unbind_all(dev->dev, dev);
err_private_cleanup:
 kirin_drm_private_cleanup(dev);
err_mode_config_cleanup:
 drm_mode_config_cleanup(dev);
 return ret;
}
