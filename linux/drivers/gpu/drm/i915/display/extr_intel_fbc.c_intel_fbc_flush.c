
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {unsigned int busy_bits; int lock; int crtc; int flip_pending; scalar_t__ active; scalar_t__ enabled; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
typedef enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;


 int ORIGIN_FLIP ;
 int ORIGIN_GTT ;
 int __intel_fbc_post_update (int ) ;
 int fbc_supported (struct drm_i915_private*) ;
 unsigned int intel_fbc_get_frontbuffer_bit (struct intel_fbc*) ;
 int intel_fbc_recompress (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_fbc_flush(struct drm_i915_private *dev_priv,
       unsigned int frontbuffer_bits, enum fb_op_origin origin)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);

 fbc->busy_bits &= ~frontbuffer_bits;

 if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
  goto out;

 if (!fbc->busy_bits && fbc->enabled &&
     (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
  if (fbc->active)
   intel_fbc_recompress(dev_priv);
  else if (!fbc->flip_pending)
   __intel_fbc_post_update(fbc->crtc);
 }

out:
 mutex_unlock(&fbc->lock);
}
