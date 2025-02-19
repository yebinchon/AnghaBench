
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int n; int m1; int m2; int p1; int p2; } ;
struct TYPE_5__ {int dpll; } ;
struct intel_crtc_state {int port_clock; TYPE_3__ dpll; TYPE_2__ dpll_hw_state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPIO_ENABLE_CALIBRATION ;
 int DPIO_K_SHIFT ;
 int DPIO_M1DIV_SHIFT ;
 int DPIO_M2DIV_MASK ;
 int DPIO_N_SHIFT ;
 int DPIO_P1_SHIFT ;
 int DPIO_P2_SHIFT ;
 int DPIO_POST_DIV_HDMIDP ;
 int DPIO_POST_DIV_SHIFT ;
 int DPLL (int) ;
 int DPLL_EXT_BUFFER_ENABLE_VLV ;
 int DPLL_VCO_ENABLE ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_HDMI ;
 int PIPE_A ;
 int PIPE_B ;
 int VLV_CMN_DW0 ;
 int VLV_PLL_DW10 (int) ;
 int VLV_PLL_DW11 (int) ;
 int VLV_PLL_DW3 (int) ;
 int VLV_PLL_DW5 (int) ;
 int VLV_PLL_DW7 (int) ;
 int VLV_PLL_DW8 (int) ;
 int VLV_PLL_DW9_BCAST ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_dpio_get (struct drm_i915_private*) ;
 int vlv_dpio_put (struct drm_i915_private*) ;
 int vlv_dpio_read (struct drm_i915_private*,int,int ) ;
 int vlv_dpio_write (struct drm_i915_private*,int,int ,int) ;
 int vlv_pllb_recal_opamp (struct drm_i915_private*,int) ;

__attribute__((used)) static void vlv_prepare_pll(struct intel_crtc *crtc,
       const struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 enum pipe pipe = crtc->pipe;
 u32 mdiv;
 u32 bestn, bestm1, bestm2, bestp1, bestp2;
 u32 coreclk, reg_val;


 I915_WRITE(DPLL(pipe),
     pipe_config->dpll_hw_state.dpll &
     ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));


 if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
  return;

 vlv_dpio_get(dev_priv);

 bestn = pipe_config->dpll.n;
 bestm1 = pipe_config->dpll.m1;
 bestm2 = pipe_config->dpll.m2;
 bestp1 = pipe_config->dpll.p1;
 bestp2 = pipe_config->dpll.p2;




 if (pipe == PIPE_B)
  vlv_pllb_recal_opamp(dev_priv, pipe);


 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9_BCAST, 0x0100000f);


 reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW8(pipe));
 reg_val &= 0x00ffffff;
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW8(pipe), reg_val);


 vlv_dpio_write(dev_priv, pipe, VLV_CMN_DW0, 0x610);


 mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
 mdiv |= ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
 mdiv |= ((bestn << DPIO_N_SHIFT));
 mdiv |= (1 << DPIO_K_SHIFT);






 mdiv |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);

 mdiv |= DPIO_ENABLE_CALIBRATION;
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);


 if (pipe_config->port_clock == 162000 ||
     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_ANALOG) ||
     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI))
  vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
     0x009f0003);
 else
  vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
     0x00d0000f);

 if (intel_crtc_has_dp_encoder(pipe_config)) {

  if (pipe == PIPE_A)
   vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
      0x0df40000);
  else
   vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
      0x0df70000);
 } else {

  if (pipe == PIPE_A)
   vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
      0x0df70000);
  else
   vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
      0x0df40000);
 }

 coreclk = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW7(pipe));
 coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
 if (intel_crtc_has_dp_encoder(pipe_config))
  coreclk |= 0x01000000;
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW7(pipe), coreclk);

 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW11(pipe), 0x87871000);

 vlv_dpio_put(dev_priv);
}
