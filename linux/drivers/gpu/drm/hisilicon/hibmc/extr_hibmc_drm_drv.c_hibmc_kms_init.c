
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hibmc_drm_private {int mode_config_initialized; TYPE_2__* dev; int fb_base; } ;
struct TYPE_3__ {int max_width; int max_height; int preferred_depth; void* funcs; scalar_t__ prefer_shadow; int fb_base; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int DRM_ERROR (char*,int) ;
 int drm_mode_config_init (TYPE_2__*) ;
 int hibmc_de_init (struct hibmc_drm_private*) ;
 int hibmc_mode_funcs ;
 int hibmc_vdac_init (struct hibmc_drm_private*) ;

__attribute__((used)) static int hibmc_kms_init(struct hibmc_drm_private *priv)
{
 int ret;

 drm_mode_config_init(priv->dev);
 priv->mode_config_initialized = 1;

 priv->dev->mode_config.min_width = 0;
 priv->dev->mode_config.min_height = 0;
 priv->dev->mode_config.max_width = 1920;
 priv->dev->mode_config.max_height = 1440;

 priv->dev->mode_config.fb_base = priv->fb_base;
 priv->dev->mode_config.preferred_depth = 24;
 priv->dev->mode_config.prefer_shadow = 0;

 priv->dev->mode_config.funcs = (void *)&hibmc_mode_funcs;

 ret = hibmc_de_init(priv);
 if (ret) {
  DRM_ERROR("failed to init de: %d\n", ret);
  return ret;
 }

 ret = hibmc_vdac_init(priv);
 if (ret) {
  DRM_ERROR("failed to init vdac: %d\n", ret);
  return ret;
 }

 return 0;
}
