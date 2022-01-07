
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int irq_lock; } ;
typedef int i915_reg_t ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPESTAT (int ) ;
 int PIPE_FIFO_UNDERRUN_STATUS ;
 int POSTING_READ (int ) ;
 int i915_pipestat_enable_mask (struct drm_i915_private*,int ) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int trace_intel_cpu_fifo_underrun (struct drm_i915_private*,int ) ;

__attribute__((used)) static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 i915_reg_t reg = PIPESTAT(crtc->pipe);
 u32 enable_mask;

 lockdep_assert_held(&dev_priv->irq_lock);

 if ((I915_READ(reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
  return;

 enable_mask = i915_pipestat_enable_mask(dev_priv, crtc->pipe);
 I915_WRITE(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
 POSTING_READ(reg);

 trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
 DRM_ERROR("pipe %c underrun\n", pipe_name(crtc->pipe));
}
