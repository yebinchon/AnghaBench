
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int underrun_detected; char* no_fbc_reason; int lock; int underrun_work; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;


 int DRM_DEBUG_KMS (char*) ;
 int cancel_work_sync (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv)
{
 int ret;

 cancel_work_sync(&dev_priv->fbc.underrun_work);

 ret = mutex_lock_interruptible(&dev_priv->fbc.lock);
 if (ret)
  return ret;

 if (dev_priv->fbc.underrun_detected) {
  DRM_DEBUG_KMS("Re-allowing FBC after fifo underrun\n");
  dev_priv->fbc.no_fbc_reason = "FIFO underrun cleared";
 }

 dev_priv->fbc.underrun_detected = 0;
 mutex_unlock(&dev_priv->fbc.lock);

 return 0;
}
