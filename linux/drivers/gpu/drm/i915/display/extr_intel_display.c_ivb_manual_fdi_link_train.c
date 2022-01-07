
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


 int ARRAY_SIZE (int*) ;
 int DRM_DEBUG_KMS (char*,...) ;
 int FDI_COMPOSITE_SYNC ;
 int FDI_DP_PORT_WIDTH (int ) ;
 int FDI_DP_PORT_WIDTH_MASK ;
 int FDI_LINK_TRAIN_AUTO ;
 int FDI_LINK_TRAIN_NONE_IVB ;
 int FDI_LINK_TRAIN_PATTERN_1_CPT ;
 int FDI_LINK_TRAIN_PATTERN_1_IVB ;
 int FDI_LINK_TRAIN_PATTERN_2_CPT ;
 int FDI_LINK_TRAIN_PATTERN_2_IVB ;
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
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int* snb_b_fdi_train_param ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
          const struct intel_crtc_state *crtc_state)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = crtc->pipe;
 i915_reg_t reg;
 u32 temp, i, j;



 reg = FDI_RX_IMR(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_RX_SYMBOL_LOCK;
 temp &= ~FDI_RX_BIT_LOCK;
 I915_WRITE(reg, temp);

 POSTING_READ(reg);
 udelay(150);

 DRM_DEBUG_KMS("FDI_RX_IIR before link train 0x%x\n",
        I915_READ(FDI_RX_IIR(pipe)));


 for (j = 0; j < ARRAY_SIZE(snb_b_fdi_train_param) * 2; j++) {

  reg = FDI_TX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~(FDI_LINK_TRAIN_AUTO | FDI_LINK_TRAIN_NONE_IVB);
  temp &= ~FDI_TX_ENABLE;
  I915_WRITE(reg, temp);

  reg = FDI_RX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_LINK_TRAIN_AUTO;
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp &= ~FDI_RX_ENABLE;
  I915_WRITE(reg, temp);


  reg = FDI_TX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_DP_PORT_WIDTH_MASK;
  temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
  temp |= FDI_LINK_TRAIN_PATTERN_1_IVB;
  temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
  temp |= snb_b_fdi_train_param[j/2];
  temp |= FDI_COMPOSITE_SYNC;
  I915_WRITE(reg, temp | FDI_TX_ENABLE);

  I915_WRITE(FDI_RX_MISC(pipe),
      FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

  reg = FDI_RX_CTL(pipe);
  temp = I915_READ(reg);
  temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
  temp |= FDI_COMPOSITE_SYNC;
  I915_WRITE(reg, temp | FDI_RX_ENABLE);

  POSTING_READ(reg);
  udelay(1);

  for (i = 0; i < 4; i++) {
   reg = FDI_RX_IIR(pipe);
   temp = I915_READ(reg);
   DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);

   if (temp & FDI_RX_BIT_LOCK ||
       (I915_READ(reg) & FDI_RX_BIT_LOCK)) {
    I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
    DRM_DEBUG_KMS("FDI train 1 done, level %i.\n",
           i);
    break;
   }
   udelay(1);
  }
  if (i == 4) {
   DRM_DEBUG_KMS("FDI train 1 fail on vswing %d\n", j / 2);
   continue;
  }


  reg = FDI_TX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_LINK_TRAIN_NONE_IVB;
  temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
  I915_WRITE(reg, temp);

  reg = FDI_RX_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
  I915_WRITE(reg, temp);

  POSTING_READ(reg);
  udelay(2);

  for (i = 0; i < 4; i++) {
   reg = FDI_RX_IIR(pipe);
   temp = I915_READ(reg);
   DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);

   if (temp & FDI_RX_SYMBOL_LOCK ||
       (I915_READ(reg) & FDI_RX_SYMBOL_LOCK)) {
    I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
    DRM_DEBUG_KMS("FDI train 2 done, level %i.\n",
           i);
    goto train_done;
   }
   udelay(2);
  }
  if (i == 4)
   DRM_DEBUG_KMS("FDI train 2 fail on vswing %d\n", j / 2);
 }

train_done:
 DRM_DEBUG_KMS("FDI train done.\n");
}
