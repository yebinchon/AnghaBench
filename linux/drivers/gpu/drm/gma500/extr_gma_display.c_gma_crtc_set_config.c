
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_psb_private {int rpm_enabled; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_set {TYPE_1__* crtc; } ;
struct drm_device {TYPE_2__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct drm_device* dev; } ;


 int drm_crtc_helper_set_config (struct drm_mode_set*,struct drm_modeset_acquire_ctx*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_forbid (int *) ;

int gma_crtc_set_config(struct drm_mode_set *set,
   struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_device *dev = set->crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 int ret;

 if (!dev_priv->rpm_enabled)
  return drm_crtc_helper_set_config(set, ctx);

 pm_runtime_forbid(&dev->pdev->dev);
 ret = drm_crtc_helper_set_config(set, ctx);
 pm_runtime_allow(&dev->pdev->dev);

 return ret;
}
