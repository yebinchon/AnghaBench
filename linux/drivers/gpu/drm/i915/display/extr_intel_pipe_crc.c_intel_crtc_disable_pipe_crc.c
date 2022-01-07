
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pipe_crc {int lock; int skipped; } ;
struct drm_crtc {size_t index; int dev; } ;
struct intel_crtc {struct drm_crtc base; } ;
struct drm_i915_private {struct intel_pipe_crc* pipe_crc; } ;


 int I915_WRITE (int ,int ) ;
 int INT_MIN ;
 int PIPE_CRC_CTL (size_t) ;
 int POSTING_READ (int ) ;
 int intel_synchronize_irq (struct drm_i915_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_crtc_disable_pipe_crc(struct intel_crtc *intel_crtc)
{
 struct drm_crtc *crtc = &intel_crtc->base;
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 struct intel_pipe_crc *pipe_crc = &dev_priv->pipe_crc[crtc->index];


 spin_lock_irq(&pipe_crc->lock);
 pipe_crc->skipped = INT_MIN;
 spin_unlock_irq(&pipe_crc->lock);

 I915_WRITE(PIPE_CRC_CTL(crtc->index), 0);
 POSTING_READ(PIPE_CRC_CTL(crtc->index));
 intel_synchronize_irq(dev_priv);
}
