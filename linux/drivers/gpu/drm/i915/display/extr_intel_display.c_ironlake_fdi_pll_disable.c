
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;


 int FDI_PCDCLK ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_PLL_ENABLE ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_PLL_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_fdi_pll_disable(struct intel_crtc *intel_crtc)
{
 struct drm_device *dev = intel_crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = intel_crtc->pipe;
 i915_reg_t reg;
 u32 temp;


 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 I915_WRITE(reg, temp & ~FDI_PCDCLK);


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 I915_WRITE(reg, temp & ~FDI_TX_PLL_ENABLE);

 POSTING_READ(reg);
 udelay(100);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 I915_WRITE(reg, temp & ~FDI_RX_PLL_ENABLE);


 POSTING_READ(reg);
 udelay(100);
}
