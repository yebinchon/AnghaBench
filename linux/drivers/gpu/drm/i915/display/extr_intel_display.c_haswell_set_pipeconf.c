
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ adjusted_mode; int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; scalar_t__ dither; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int DRM_MODE_FLAG_INTERLACE ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PIPECONF (int) ;
 int PIPECONF_DITHER_EN ;
 int PIPECONF_DITHER_TYPE_SP ;
 int PIPECONF_INTERLACED_ILK ;
 int PIPECONF_PROGRESSIVE ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 val = 0;

 if (IS_HASWELL(dev_priv) && crtc_state->dither)
  val |= (PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP);

 if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
  val |= PIPECONF_INTERLACED_ILK;
 else
  val |= PIPECONF_PROGRESSIVE;

 I915_WRITE(PIPECONF(cpu_transcoder), val);
 POSTING_READ(PIPECONF(cpu_transcoder));
}
