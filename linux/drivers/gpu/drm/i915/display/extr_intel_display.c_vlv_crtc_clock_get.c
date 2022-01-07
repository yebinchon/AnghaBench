
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dpll; } ;
struct intel_crtc_state {int cpu_transcoder; int port_clock; TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpll {int m1; int m2; int n; int p1; int p2; } ;


 int DPIO_M1DIV_SHIFT ;
 int DPIO_M2DIV_MASK ;
 int DPIO_N_SHIFT ;
 int DPIO_P1_SHIFT ;
 int DPIO_P2_SHIFT ;
 int DPLL_VCO_ENABLE ;
 int VLV_PLL_DW3 (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_calc_dpll_params (int,struct dpll*) ;
 int vlv_dpio_get (struct drm_i915_private*) ;
 int vlv_dpio_put (struct drm_i915_private*) ;
 int vlv_dpio_read (struct drm_i915_private*,int,int ) ;

__attribute__((used)) static void vlv_crtc_clock_get(struct intel_crtc *crtc,
          struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = pipe_config->cpu_transcoder;
 struct dpll clock;
 u32 mdiv;
 int refclk = 100000;


 if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
  return;

 vlv_dpio_get(dev_priv);
 mdiv = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW3(pipe));
 vlv_dpio_put(dev_priv);

 clock.m1 = (mdiv >> DPIO_M1DIV_SHIFT) & 7;
 clock.m2 = mdiv & DPIO_M2DIV_MASK;
 clock.n = (mdiv >> DPIO_N_SHIFT) & 0xf;
 clock.p1 = (mdiv >> DPIO_P1_SHIFT) & 7;
 clock.p2 = (mdiv >> DPIO_P2_SHIFT) & 0x1f;

 pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
}
