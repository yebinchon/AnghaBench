
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {int mode_config_initialized; int dev; } ;


 int drm_mode_config_cleanup (int ) ;

__attribute__((used)) static void hibmc_kms_fini(struct hibmc_drm_private *priv)
{
 if (priv->mode_config_initialized) {
  drm_mode_config_cleanup(priv->dev);
  priv->mode_config_initialized = 0;
 }
}
