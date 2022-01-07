
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPESTAT (int) ;
 int PIPE_FIFO_UNDERRUN_STATUS ;
 int POSTING_READ (int ) ;
 int i915_pipestat_enable_mask (struct drm_i915_private*,int) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
          enum pipe pipe,
          bool enable, bool old)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 i915_reg_t reg = PIPESTAT(pipe);

 lockdep_assert_held(&dev_priv->irq_lock);

 if (enable) {
  u32 enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);

  I915_WRITE(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
  POSTING_READ(reg);
 } else {
  if (old && I915_READ(reg) & PIPE_FIFO_UNDERRUN_STATUS)
   DRM_ERROR("pipe %c underrun\n", pipe_name(pipe));
 }
}
