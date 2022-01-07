
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int enabled; void* size; void* pos; } ;
struct intel_crtc_state {TYPE_1__ pch_pfit; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 void* I915_READ (int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PF_CTL (int ) ;
 int PF_ENABLE ;
 int PF_PIPE_SEL_IVB (int ) ;
 int PF_PIPE_SEL_MASK_IVB ;
 int PF_WIN_POS (int ) ;
 int PF_WIN_SZ (int ) ;
 int WARN_ON (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void ironlake_get_pfit_config(struct intel_crtc *crtc,
         struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 tmp;

 tmp = I915_READ(PF_CTL(crtc->pipe));

 if (tmp & PF_ENABLE) {
  pipe_config->pch_pfit.enabled = 1;
  pipe_config->pch_pfit.pos = I915_READ(PF_WIN_POS(crtc->pipe));
  pipe_config->pch_pfit.size = I915_READ(PF_WIN_SZ(crtc->pipe));




  if (IS_GEN(dev_priv, 7)) {
   WARN_ON((tmp & PF_PIPE_SEL_MASK_IVB) !=
    PF_PIPE_SEL_IVB(crtc->pipe));
  }
 }
}
