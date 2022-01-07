
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int busy_frontbuffer_bits; int lock; int pipe; int enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;


 int CAN_PSR (struct drm_i915_private*) ;
 unsigned int INTEL_FRONTBUFFER_ALL_MASK (int ) ;
 int ORIGIN_FLIP ;
 int intel_psr_exit (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_psr_invalidate(struct drm_i915_private *dev_priv,
     unsigned frontbuffer_bits, enum fb_op_origin origin)
{
 if (!CAN_PSR(dev_priv))
  return;

 if (origin == ORIGIN_FLIP)
  return;

 mutex_lock(&dev_priv->psr.lock);
 if (!dev_priv->psr.enabled) {
  mutex_unlock(&dev_priv->psr.lock);
  return;
 }

 frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(dev_priv->psr.pipe);
 dev_priv->psr.busy_frontbuffer_bits |= frontbuffer_bits;

 if (frontbuffer_bits)
  intel_psr_exit(dev_priv);

 mutex_unlock(&dev_priv->psr.lock);
}
