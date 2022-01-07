
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int allow_fb_modifiers; int normalize_zpos; int * helper_private; int * funcs; } ;
struct drm_device {int irq_enabled; int dev; TYPE_1__ mode_config; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int MAX_CRTC ;
 int PTR_ERR (struct drm_device*) ;
 int component_bind_all (struct device*,struct drm_device*) ;
 int component_unbind_all (int ,struct drm_device*) ;
 int dev_set_drvdata (struct device*,struct drm_device*) ;
 int dev_warn (struct device*,char*) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int imx_drm_driver ;
 int imx_drm_mode_config_funcs ;
 int imx_drm_mode_config_helpers ;
 int legacyfb_depth ;

__attribute__((used)) static int imx_drm_bind(struct device *dev)
{
 struct drm_device *drm;
 int ret;

 drm = drm_dev_alloc(&imx_drm_driver, dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);
 drm->irq_enabled = 1;






 drm->mode_config.min_width = 1;
 drm->mode_config.min_height = 1;
 drm->mode_config.max_width = 4096;
 drm->mode_config.max_height = 4096;
 drm->mode_config.funcs = &imx_drm_mode_config_funcs;
 drm->mode_config.helper_private = &imx_drm_mode_config_helpers;
 drm->mode_config.allow_fb_modifiers = 1;
 drm->mode_config.normalize_zpos = 1;

 drm_mode_config_init(drm);

 ret = drm_vblank_init(drm, MAX_CRTC);
 if (ret)
  goto err_kms;

 dev_set_drvdata(dev, drm);


 ret = component_bind_all(dev, drm);
 if (ret)
  goto err_kms;

 drm_mode_config_reset(drm);






 if (legacyfb_depth != 16 && legacyfb_depth != 32) {
  dev_warn(dev, "Invalid legacyfb_depth.  Defaulting to 16bpp\n");
  legacyfb_depth = 16;
 }

 drm_kms_helper_poll_init(drm);

 ret = drm_dev_register(drm, 0);
 if (ret)
  goto err_poll_fini;

 drm_fbdev_generic_setup(drm, legacyfb_depth);

 return 0;

err_poll_fini:
 drm_kms_helper_poll_fini(drm);
 component_unbind_all(drm->dev, drm);
err_kms:
 drm_mode_config_cleanup(drm);
 drm_dev_put(drm);

 return ret;
}
