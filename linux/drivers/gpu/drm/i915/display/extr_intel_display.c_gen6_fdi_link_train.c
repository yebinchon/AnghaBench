
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc_state {int fdi_lanes; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int FDI_DP_PORT_WIDTH (int ) ;
 int FDI_DP_PORT_WIDTH_MASK ;
 int FDI_LINK_TRAIN_400MV_0DB_SNB_B ;
 int FDI_LINK_TRAIN_NONE ;
 int FDI_LINK_TRAIN_PATTERN_1 ;
 int FDI_LINK_TRAIN_PATTERN_1_CPT ;
 int FDI_LINK_TRAIN_PATTERN_2 ;
 int FDI_LINK_TRAIN_PATTERN_2_CPT ;
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ;
 int FDI_LINK_TRAIN_VOL_EMP_MASK ;
 int FDI_RX_BIT_LOCK ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_ENABLE ;
 int FDI_RX_FDI_DELAY_90 ;
 int FDI_RX_IIR (int) ;
 int FDI_RX_IMR (int) ;
 int FDI_RX_MISC (int) ;
 int FDI_RX_SYMBOL_LOCK ;
 int FDI_RX_TP1_TO_TP2_48 ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_ENABLE ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int POSTING_READ (int ) ;
 int* snb_b_fdi_train_param ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;

__attribute__((used)) static void gen6_fdi_link_train(struct intel_crtc *crtc,
    const struct intel_crtc_state *crtc_state)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = crtc->pipe;
 i915_reg_t reg;
 u32 temp, i, retry;



 reg = FDI_RX_IMR(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_RX_SYMBOL_LOCK;
 temp &= ~FDI_RX_BIT_LOCK;
 I915_WRITE(reg, temp);

 POSTING_READ(reg);
 udelay(150);


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_DP_PORT_WIDTH_MASK;
 temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_1;
 temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;

 temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
 I915_WRITE(reg, temp | FDI_TX_ENABLE);

 I915_WRITE(FDI_RX_MISC(pipe),
     FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 if (HAS_PCH_CPT(dev_priv)) {
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
 } else {
  temp &= ~FDI_LINK_TRAIN_NONE;
  temp |= FDI_LINK_TRAIN_PATTERN_1;
 }
 I915_WRITE(reg, temp | FDI_RX_ENABLE);

 POSTING_READ(reg);
 udelay(150);

 for (i = 0; i < 4; i++) {
  reg = FDI_TX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
  temp |= snb_b_fdi_train_param[i];
  I915_WRITE(reg, temp);

  POSTING_READ(reg);
  udelay(500);

  for (retry = 0; retry < 5; retry++) {
   reg = FDI_RX_IIR(pipe);
   temp = I915_READ(reg);
   DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
   if (temp & FDI_RX_BIT_LOCK) {
    I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
    DRM_DEBUG_KMS("FDI train 1 done.\n");
    break;
   }
   udelay(50);
  }
  if (retry < 5)
   break;
 }
 if (i == 4)
  DRM_ERROR("FDI train 1 fail!\n");


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_2;
 if (IS_GEN(dev_priv, 6)) {
  temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;

  temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
 }
 I915_WRITE(reg, temp);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 if (HAS_PCH_CPT(dev_priv)) {
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
 } else {
  temp &= ~FDI_LINK_TRAIN_NONE;
  temp |= FDI_LINK_TRAIN_PATTERN_2;
 }
 I915_WRITE(reg, temp);

 POSTING_READ(reg);
 udelay(150);

 for (i = 0; i < 4; i++) {
  reg = FDI_TX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
  temp |= snb_b_fdi_train_param[i];
  I915_WRITE(reg, temp);

  POSTING_READ(reg);
  udelay(500);

  for (retry = 0; retry < 5; retry++) {
   reg = FDI_RX_IIR(pipe);
   temp = I915_READ(reg);
   DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
   if (temp & FDI_RX_SYMBOL_LOCK) {
    I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
    DRM_DEBUG_KMS("FDI train 2 done.\n");
    break;
   }
   udelay(50);
  }
  if (retry < 5)
   break;
 }
 if (i == 4)
  DRM_ERROR("FDI train 2 fail!\n");

 DRM_DEBUG_KMS("FDI train done.\n");
}
