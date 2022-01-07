
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int gamma_mode; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PIPECONF (int) ;
 int PIPECONF_GAMMA_MODE (int ) ;
 int PIPECONF_GAMMA_MODE_MASK_I9XX ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 u32 val;

 val = I915_READ(PIPECONF(pipe));
 val &= ~PIPECONF_GAMMA_MODE_MASK_I9XX;
 val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
 I915_WRITE(PIPECONF(pipe), val);
}
