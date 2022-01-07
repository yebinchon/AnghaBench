
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int control; int pgm_ratios; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {TYPE_3__ gmch_pfit; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BCLRPAT (int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PFIT_CONTROL ;
 int PFIT_ENABLE ;
 int PFIT_PGM_RATIOS ;
 int WARN_ON (int) ;
 int assert_pipe_disabled (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 if (!crtc_state->gmch_pfit.control)
  return;





 WARN_ON(I915_READ(PFIT_CONTROL) & PFIT_ENABLE);
 assert_pipe_disabled(dev_priv, crtc->pipe);

 I915_WRITE(PFIT_PGM_RATIOS, crtc_state->gmch_pfit.pgm_ratios);
 I915_WRITE(PFIT_CONTROL, crtc_state->gmch_pfit.control);



 I915_WRITE(BCLRPAT(crtc->pipe), 0);
}
