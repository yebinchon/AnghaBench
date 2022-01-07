
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


 int FDI_FE_ERRC_ENABLE ;
 int FDI_FS_ERRC_ENABLE ;
 int FDI_LINK_TRAIN_NONE ;
 int FDI_LINK_TRAIN_NONE_IVB ;
 int FDI_LINK_TRAIN_NORMAL_CPT ;
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_ENHANCE_FRAME_ENABLE ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_ENHANCE_FRAME_ENABLE ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;

__attribute__((used)) static void intel_fdi_normal_train(struct intel_crtc *crtc)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = crtc->pipe;
 i915_reg_t reg;
 u32 temp;


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 if (IS_IVYBRIDGE(dev_priv)) {
  temp &= ~FDI_LINK_TRAIN_NONE_IVB;
  temp |= FDI_LINK_TRAIN_NONE_IVB | FDI_TX_ENHANCE_FRAME_ENABLE;
 } else {
  temp &= ~FDI_LINK_TRAIN_NONE;
  temp |= FDI_LINK_TRAIN_NONE | FDI_TX_ENHANCE_FRAME_ENABLE;
 }
 I915_WRITE(reg, temp);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 if (HAS_PCH_CPT(dev_priv)) {
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp |= FDI_LINK_TRAIN_NORMAL_CPT;
 } else {
  temp &= ~FDI_LINK_TRAIN_NONE;
  temp |= FDI_LINK_TRAIN_NONE;
 }
 I915_WRITE(reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);


 POSTING_READ(reg);
 udelay(1000);


 if (IS_IVYBRIDGE(dev_priv))
  I915_WRITE(reg, I915_READ(reg) | FDI_FS_ERRC_ENABLE |
      FDI_FE_ERRC_ENABLE);
}
