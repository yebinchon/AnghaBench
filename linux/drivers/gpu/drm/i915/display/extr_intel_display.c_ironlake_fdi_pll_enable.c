
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int fdi_lanes; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int FDI_DP_PORT_WIDTH (int ) ;
 int FDI_DP_PORT_WIDTH_MASK ;
 int FDI_PCDCLK ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_PLL_ENABLE ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_PLL_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPECONF (int) ;
 int PIPECONF_BPC_MASK ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
 int pipe = intel_crtc->pipe;
 i915_reg_t reg;
 u32 temp;


 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
 temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
 I915_WRITE(reg, temp | FDI_RX_PLL_ENABLE);

 POSTING_READ(reg);
 udelay(200);


 temp = I915_READ(reg);
 I915_WRITE(reg, temp | FDI_PCDCLK);

 POSTING_READ(reg);
 udelay(200);


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 if ((temp & FDI_TX_PLL_ENABLE) == 0) {
  I915_WRITE(reg, temp | FDI_TX_PLL_ENABLE);

  POSTING_READ(reg);
  udelay(100);
 }
}
