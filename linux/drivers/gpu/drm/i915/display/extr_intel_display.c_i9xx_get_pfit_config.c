
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int control; void* pgm_ratios; } ;
struct intel_crtc_state {TYPE_1__ gmch_pfit; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 void* I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PFIT_CONTROL ;
 int PFIT_ENABLE ;
 int PFIT_PGM_RATIOS ;
 int PFIT_PIPE_MASK ;
 int PFIT_PIPE_SHIFT ;
 int PIPE_B ;
 int i9xx_has_pfit (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i9xx_get_pfit_config(struct intel_crtc *crtc,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 u32 tmp;

 if (!i9xx_has_pfit(dev_priv))
  return;

 tmp = I915_READ(PFIT_CONTROL);
 if (!(tmp & PFIT_ENABLE))
  return;


 if (INTEL_GEN(dev_priv) < 4) {
  if (crtc->pipe != PIPE_B)
   return;
 } else {
  if ((tmp & PFIT_PIPE_MASK) != (crtc->pipe << PFIT_PIPE_SHIFT))
   return;
 }

 pipe_config->gmch_pfit.control = tmp;
 pipe_config->gmch_pfit.pgm_ratios = I915_READ(PFIT_PGM_RATIOS);
}
