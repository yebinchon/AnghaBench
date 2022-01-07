
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {scalar_t__ cpu_fifo_underrun_disabled; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int intel_fbc_handle_fifo_underrun_irq (struct drm_i915_private*) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 scalar_t__ intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int pipe_name (int) ;
 int trace_intel_cpu_fifo_underrun (struct drm_i915_private*,int) ;

void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
      enum pipe pipe)
{
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);


 if (crtc == ((void*)0))
  return;


 if (HAS_GMCH(dev_priv) &&
     crtc->cpu_fifo_underrun_disabled)
  return;

 if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 0)) {
  trace_intel_cpu_fifo_underrun(dev_priv, pipe);
  DRM_ERROR("CPU pipe %c FIFO underrun\n",
     pipe_name(pipe));
 }

 intel_fbc_handle_fifo_underrun_irq(dev_priv);
}
