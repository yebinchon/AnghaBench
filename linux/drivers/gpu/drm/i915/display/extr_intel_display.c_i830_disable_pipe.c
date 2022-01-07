
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CURCNTR (int ) ;
 int DISPLAY_PLANE_ENABLE ;
 int DPLL (int) ;
 int DPLL_VGA_MODE_DIS ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DSPCNTR (int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int MCURSOR_MODE ;
 int PIPECONF (int) ;
 int PIPE_A ;
 int PIPE_B ;
 int PLANE_A ;
 int PLANE_B ;
 int PLANE_C ;
 int POSTING_READ (int ) ;
 int WARN_ON (int) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int intel_wait_for_pipe_scanline_stopped (struct intel_crtc*) ;
 int pipe_name (int) ;

void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

 DRM_DEBUG_KMS("disabling pipe %c due to force quirk\n",
        pipe_name(pipe));

 WARN_ON(I915_READ(DSPCNTR(PLANE_A)) & DISPLAY_PLANE_ENABLE);
 WARN_ON(I915_READ(DSPCNTR(PLANE_B)) & DISPLAY_PLANE_ENABLE);
 WARN_ON(I915_READ(DSPCNTR(PLANE_C)) & DISPLAY_PLANE_ENABLE);
 WARN_ON(I915_READ(CURCNTR(PIPE_A)) & MCURSOR_MODE);
 WARN_ON(I915_READ(CURCNTR(PIPE_B)) & MCURSOR_MODE);

 I915_WRITE(PIPECONF(pipe), 0);
 POSTING_READ(PIPECONF(pipe));

 intel_wait_for_pipe_scanline_stopped(crtc);

 I915_WRITE(DPLL(pipe), DPLL_VGA_MODE_DIS);
 POSTING_READ(DPLL(pipe));
}
