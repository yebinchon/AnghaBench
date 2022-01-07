
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dpll; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;


 int CHV_CMN_DW14 (int) ;
 int DPIO_DCLKP_EN ;
 int DPLL (int) ;
 int DPLL_LOCK_VLV ;
 int DRM_ERROR (char*,int) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int udelay (int) ;
 int vlv_dpio_get (struct drm_i915_private*) ;
 int vlv_dpio_put (struct drm_i915_private*) ;
 int vlv_dpio_read (struct drm_i915_private*,int,int ) ;
 int vlv_dpio_write (struct drm_i915_private*,int,int ,int ) ;
 int vlv_pipe_to_channel (int) ;

__attribute__((used)) static void _chv_enable_pll(struct intel_crtc *crtc,
       const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 enum dpio_channel port = vlv_pipe_to_channel(pipe);
 u32 tmp;

 vlv_dpio_get(dev_priv);


 tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
 tmp |= DPIO_DCLKP_EN;
 vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), tmp);

 vlv_dpio_put(dev_priv);




 udelay(1);


 I915_WRITE(DPLL(pipe), pipe_config->dpll_hw_state.dpll);


 if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
  DRM_ERROR("PLL %d failed to lock\n", pipe);
}
