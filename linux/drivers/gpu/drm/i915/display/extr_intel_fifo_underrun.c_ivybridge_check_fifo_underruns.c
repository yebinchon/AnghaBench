
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
 int ERR_INT_FIFO_UNDERRUN (int) ;
 int GEN7_ERR_INT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int trace_intel_cpu_fifo_underrun (struct drm_i915_private*,int) ;

__attribute__((used)) static void ivybridge_check_fifo_underruns(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 u32 err_int = I915_READ(GEN7_ERR_INT);

 lockdep_assert_held(&dev_priv->irq_lock);

 if ((err_int & ERR_INT_FIFO_UNDERRUN(pipe)) == 0)
  return;

 I915_WRITE(GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
 POSTING_READ(GEN7_ERR_INT);

 trace_intel_cpu_fifo_underrun(dev_priv, pipe);
 DRM_ERROR("fifo underrun on pipe %c\n", pipe_name(pipe));
}
