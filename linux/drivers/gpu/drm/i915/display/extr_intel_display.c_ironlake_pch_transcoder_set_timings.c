
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int HBLANK (int) ;
 int HSYNC (int) ;
 int HTOTAL (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_TRANS_HBLANK (int) ;
 int PCH_TRANS_HSYNC (int) ;
 int PCH_TRANS_HTOTAL (int) ;
 int PCH_TRANS_VBLANK (int) ;
 int PCH_TRANS_VSYNC (int) ;
 int PCH_TRANS_VSYNCSHIFT (int) ;
 int PCH_TRANS_VTOTAL (int) ;
 int VBLANK (int) ;
 int VSYNC (int) ;
 int VSYNCSHIFT (int) ;
 int VTOTAL (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ironlake_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
      enum pipe pch_transcoder)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

 I915_WRITE(PCH_TRANS_HTOTAL(pch_transcoder),
     I915_READ(HTOTAL(cpu_transcoder)));
 I915_WRITE(PCH_TRANS_HBLANK(pch_transcoder),
     I915_READ(HBLANK(cpu_transcoder)));
 I915_WRITE(PCH_TRANS_HSYNC(pch_transcoder),
     I915_READ(HSYNC(cpu_transcoder)));

 I915_WRITE(PCH_TRANS_VTOTAL(pch_transcoder),
     I915_READ(VTOTAL(cpu_transcoder)));
 I915_WRITE(PCH_TRANS_VBLANK(pch_transcoder),
     I915_READ(VBLANK(cpu_transcoder)));
 I915_WRITE(PCH_TRANS_VSYNC(pch_transcoder),
     I915_READ(VSYNC(cpu_transcoder)));
 I915_WRITE(PCH_TRANS_VSYNCSHIFT(pch_transcoder),
     I915_READ(VSYNCSHIFT(cpu_transcoder)));
}
