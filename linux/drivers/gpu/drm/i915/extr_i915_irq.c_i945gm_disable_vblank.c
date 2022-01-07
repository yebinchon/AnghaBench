
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; int work; } ;
struct drm_i915_private {TYPE_1__ i945gm_vblank; } ;
struct drm_crtc {int dev; } ;


 int i8xx_disable_vblank (struct drm_crtc*) ;
 int schedule_work (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void i945gm_disable_vblank(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);

 i8xx_disable_vblank(crtc);

 if (--dev_priv->i945gm_vblank.enabled == 0)
  schedule_work(&dev_priv->i945gm_vblank.work);
}
