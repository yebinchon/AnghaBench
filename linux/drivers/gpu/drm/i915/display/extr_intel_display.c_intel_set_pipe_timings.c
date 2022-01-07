
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int crtc_vtotal; int crtc_vblank_end; int flags; int crtc_htotal; int crtc_hsync_start; int crtc_hdisplay; int crtc_hblank_start; int crtc_hblank_end; int crtc_hsync_end; int crtc_vdisplay; int crtc_vblank_start; int crtc_vsync_start; int crtc_vsync_end; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_FLAG_INTERLACE ;
 int HBLANK (int) ;
 int HSYNC (int) ;
 int HTOTAL (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_SDVO ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PIPE_B ;
 int PIPE_C ;
 int TRANSCODER_EDP ;
 int VBLANK (int) ;
 int VSYNC (int) ;
 int VSYNCSHIFT (int) ;
 int VTOTAL (int) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_set_pipe_timings(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 const struct drm_display_mode *adjusted_mode = &crtc_state->base.adjusted_mode;
 u32 crtc_vtotal, crtc_vblank_end;
 int vsyncshift = 0;



 crtc_vtotal = adjusted_mode->crtc_vtotal;
 crtc_vblank_end = adjusted_mode->crtc_vblank_end;

 if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {

  crtc_vtotal -= 1;
  crtc_vblank_end -= 1;

  if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
   vsyncshift = (adjusted_mode->crtc_htotal - 1) / 2;
  else
   vsyncshift = adjusted_mode->crtc_hsync_start -
    adjusted_mode->crtc_htotal / 2;
  if (vsyncshift < 0)
   vsyncshift += adjusted_mode->crtc_htotal;
 }

 if (INTEL_GEN(dev_priv) > 3)
  I915_WRITE(VSYNCSHIFT(cpu_transcoder), vsyncshift);

 I915_WRITE(HTOTAL(cpu_transcoder),
     (adjusted_mode->crtc_hdisplay - 1) |
     ((adjusted_mode->crtc_htotal - 1) << 16));
 I915_WRITE(HBLANK(cpu_transcoder),
     (adjusted_mode->crtc_hblank_start - 1) |
     ((adjusted_mode->crtc_hblank_end - 1) << 16));
 I915_WRITE(HSYNC(cpu_transcoder),
     (adjusted_mode->crtc_hsync_start - 1) |
     ((adjusted_mode->crtc_hsync_end - 1) << 16));

 I915_WRITE(VTOTAL(cpu_transcoder),
     (adjusted_mode->crtc_vdisplay - 1) |
     ((crtc_vtotal - 1) << 16));
 I915_WRITE(VBLANK(cpu_transcoder),
     (adjusted_mode->crtc_vblank_start - 1) |
     ((crtc_vblank_end - 1) << 16));
 I915_WRITE(VSYNC(cpu_transcoder),
     (adjusted_mode->crtc_vsync_start - 1) |
     ((adjusted_mode->crtc_vsync_end - 1) << 16));





 if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
     (pipe == PIPE_B || pipe == PIPE_C))
  I915_WRITE(VTOTAL(pipe), I915_READ(VTOTAL(cpu_transcoder)));

}
