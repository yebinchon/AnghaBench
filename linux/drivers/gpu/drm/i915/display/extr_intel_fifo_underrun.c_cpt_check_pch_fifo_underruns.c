
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int irq_lock; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SERR_INT ;
 int SERR_INT_TRANS_FIFO_UNDERRUN (int) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int trace_intel_pch_fifo_underrun (struct drm_i915_private*,int) ;

__attribute__((used)) static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pch_transcoder = crtc->pipe;
 u32 serr_int = I915_READ(SERR_INT);

 lockdep_assert_held(&dev_priv->irq_lock);

 if ((serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) == 0)
  return;

 I915_WRITE(SERR_INT, SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 POSTING_READ(SERR_INT);

 trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
 DRM_ERROR("pch fifo underrun on pch transcoder %c\n",
    pipe_name(pch_transcoder));
}
