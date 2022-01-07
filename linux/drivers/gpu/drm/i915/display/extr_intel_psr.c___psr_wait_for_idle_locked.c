
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ enabled; int lock; scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef int i915_reg_t ;


 int DRM_ERROR (char*) ;
 int EDP_PSR2_STATUS ;
 int EDP_PSR2_STATUS_STATE_MASK ;
 int EDP_PSR_STATUS ;
 int EDP_PSR_STATUS_STATE_MASK ;
 int intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool __psr_wait_for_idle_locked(struct drm_i915_private *dev_priv)
{
 i915_reg_t reg;
 u32 mask;
 int err;

 if (!dev_priv->psr.enabled)
  return 0;

 if (dev_priv->psr.psr2_enabled) {
  reg = EDP_PSR2_STATUS;
  mask = EDP_PSR2_STATUS_STATE_MASK;
 } else {
  reg = EDP_PSR_STATUS;
  mask = EDP_PSR_STATUS_STATE_MASK;
 }

 mutex_unlock(&dev_priv->psr.lock);

 err = intel_de_wait_for_clear(dev_priv, reg, mask, 50);
 if (err)
  DRM_ERROR("Timed out waiting for PSR Idle for re-enable\n");


 mutex_lock(&dev_priv->psr.lock);
 return err == 0 && dev_priv->psr.enabled;
}
