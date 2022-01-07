
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;


 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;

__attribute__((used)) static void aspeed_gfx_unload(struct drm_device *drm)
{
 drm_kms_helper_poll_fini(drm);
 drm_mode_config_cleanup(drm);

 drm->dev_private = ((void*)0);
}
