
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int GEN8_PIPE_FIFO_UNDERRUN ;
 int bdw_disable_pipe_irq (struct drm_i915_private*,int,int ) ;
 int bdw_enable_pipe_irq (struct drm_i915_private*,int,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void broadwell_set_fifo_underrun_reporting(struct drm_device *dev,
        enum pipe pipe, bool enable)
{
 struct drm_i915_private *dev_priv = to_i915(dev);

 if (enable)
  bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
 else
  bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
}
