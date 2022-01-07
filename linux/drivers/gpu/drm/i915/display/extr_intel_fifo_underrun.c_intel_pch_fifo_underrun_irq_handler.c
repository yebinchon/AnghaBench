
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int pipe_name (int) ;
 int trace_intel_pch_fifo_underrun (struct drm_i915_private*,int) ;

void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
      enum pipe pch_transcoder)
{
 if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
        0)) {
  trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
  DRM_ERROR("PCH transcoder %c FIFO underrun\n",
     pipe_name(pch_transcoder));
 }
}
