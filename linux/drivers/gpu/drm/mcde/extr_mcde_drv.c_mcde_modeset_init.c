
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {int bridge; int pipe; scalar_t__ te_sync; } ;
struct drm_mode_config {int min_width; int max_width; int min_height; int max_height; int * helper_private; int * funcs; } ;
struct drm_device {int dev; struct drm_mode_config mode_config; struct mcde* dev_private; } ;


 int EPROBE_DEFER ;
 int dev_err (int ,char*) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_simple_display_pipe_attach_bridge (int *,int ) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int mcde_display_init (struct drm_device*) ;
 int mcde_mode_config_funcs ;
 int mcde_mode_config_helpers ;

__attribute__((used)) static int mcde_modeset_init(struct drm_device *drm)
{
 struct drm_mode_config *mode_config;
 struct mcde *mcde = drm->dev_private;
 int ret;

 if (!mcde->bridge) {
  dev_err(drm->dev, "no display output bridge yet\n");
  return -EPROBE_DEFER;
 }

 mode_config = &drm->mode_config;
 mode_config->funcs = &mcde_mode_config_funcs;
 mode_config->helper_private = &mcde_mode_config_helpers;

 mode_config->min_width = 1;
 mode_config->max_width = 1920;
 mode_config->min_height = 1;
 mode_config->max_height = 1080;







 if (mcde->te_sync) {
  ret = drm_vblank_init(drm, 1);
  if (ret) {
   dev_err(drm->dev, "failed to init vblank\n");
   goto out_config;
  }
 }

 ret = mcde_display_init(drm);
 if (ret) {
  dev_err(drm->dev, "failed to init display\n");
  goto out_config;
 }
 ret = drm_simple_display_pipe_attach_bridge(&mcde->pipe,
          mcde->bridge);
 if (ret) {
  dev_err(drm->dev, "failed to attach display output bridge\n");
  goto out_config;
 }

 drm_mode_config_reset(drm);
 drm_kms_helper_poll_init(drm);
 drm_fbdev_generic_setup(drm, 32);

 return 0;

out_config:
 drm_mode_config_cleanup(drm);
 return ret;
}
