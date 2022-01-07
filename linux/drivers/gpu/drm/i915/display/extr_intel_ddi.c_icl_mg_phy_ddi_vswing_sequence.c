
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct icl_mg_phy_ddi_buf_trans {int cri_txdeemph_override_11_6; int cri_txdeemph_override_5_0; int cri_txdeemph_override_17_12; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int ARRAY_SIZE (struct icl_mg_phy_ddi_buf_trans*) ;
 int CFG_AMI_CK_DIV_OVERRIDE_EN ;
 int CFG_AMI_CK_DIV_OVERRIDE_VAL (int) ;
 int CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK ;
 int CFG_LOW_RATE_LKREN_EN ;
 int CRI_CALCINIT ;
 int CRI_TXDEEMPH_OVERRIDE_11_6 (int ) ;
 int CRI_TXDEEMPH_OVERRIDE_11_6_MASK ;
 int CRI_TXDEEMPH_OVERRIDE_17_12 (int ) ;
 int CRI_TXDEEMPH_OVERRIDE_17_12_MASK ;
 int CRI_TXDEEMPH_OVERRIDE_5_0 (int ) ;
 int CRI_TXDEEMPH_OVERRIDE_5_0_MASK ;
 int CRI_TXDEEMPH_OVERRIDE_EN ;
 int CRI_USE_FS32 ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MG_CLKHUB (int,int) ;
 int MG_TX1_DCC (int,int) ;
 int MG_TX1_DRVCTRL (int,int) ;
 int MG_TX1_LINK_PARAMS (int,int) ;
 int MG_TX1_PISO_READLOAD (int,int) ;
 int MG_TX1_SWINGCTRL (int,int) ;
 int MG_TX2_DCC (int,int) ;
 int MG_TX2_DRVCTRL (int,int) ;
 int MG_TX2_LINK_PARAMS (int,int) ;
 int MG_TX2_PISO_READLOAD (int,int) ;
 int MG_TX2_SWINGCTRL (int,int) ;
 struct icl_mg_phy_ddi_buf_trans* icl_mg_phy_ddi_translations ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
        int link_clock,
        u32 level)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = encoder->port;
 const struct icl_mg_phy_ddi_buf_trans *ddi_translations;
 u32 n_entries, val;
 int ln;

 n_entries = ARRAY_SIZE(icl_mg_phy_ddi_translations);
 ddi_translations = icl_mg_phy_ddi_translations;

 if (level >= n_entries || level == 3 || level == 9) {
  DRM_DEBUG_KMS("DDI translation not found for level %d. Using %d instead.",
         level, n_entries - 2);
  level = n_entries - 2;
 }


 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_TX1_LINK_PARAMS(ln, port));
  val &= ~CRI_USE_FS32;
  I915_WRITE(MG_TX1_LINK_PARAMS(ln, port), val);

  val = I915_READ(MG_TX2_LINK_PARAMS(ln, port));
  val &= ~CRI_USE_FS32;
  I915_WRITE(MG_TX2_LINK_PARAMS(ln, port), val);
 }


 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_TX1_SWINGCTRL(ln, port));
  val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
  val |= CRI_TXDEEMPH_OVERRIDE_17_12(
   ddi_translations[level].cri_txdeemph_override_17_12);
  I915_WRITE(MG_TX1_SWINGCTRL(ln, port), val);

  val = I915_READ(MG_TX2_SWINGCTRL(ln, port));
  val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
  val |= CRI_TXDEEMPH_OVERRIDE_17_12(
   ddi_translations[level].cri_txdeemph_override_17_12);
  I915_WRITE(MG_TX2_SWINGCTRL(ln, port), val);
 }


 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_TX1_DRVCTRL(ln, port));
  val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
    CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
  val |= CRI_TXDEEMPH_OVERRIDE_5_0(
   ddi_translations[level].cri_txdeemph_override_5_0) |
   CRI_TXDEEMPH_OVERRIDE_11_6(
    ddi_translations[level].cri_txdeemph_override_11_6) |
   CRI_TXDEEMPH_OVERRIDE_EN;
  I915_WRITE(MG_TX1_DRVCTRL(ln, port), val);

  val = I915_READ(MG_TX2_DRVCTRL(ln, port));
  val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
    CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
  val |= CRI_TXDEEMPH_OVERRIDE_5_0(
   ddi_translations[level].cri_txdeemph_override_5_0) |
   CRI_TXDEEMPH_OVERRIDE_11_6(
    ddi_translations[level].cri_txdeemph_override_11_6) |
   CRI_TXDEEMPH_OVERRIDE_EN;
  I915_WRITE(MG_TX2_DRVCTRL(ln, port), val);


 }






 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_CLKHUB(ln, port));
  if (link_clock < 300000)
   val |= CFG_LOW_RATE_LKREN_EN;
  else
   val &= ~CFG_LOW_RATE_LKREN_EN;
  I915_WRITE(MG_CLKHUB(ln, port), val);
 }


 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_TX1_DCC(ln, port));
  val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
  if (link_clock <= 500000) {
   val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
  } else {
   val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
    CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
  }
  I915_WRITE(MG_TX1_DCC(ln, port), val);

  val = I915_READ(MG_TX2_DCC(ln, port));
  val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
  if (link_clock <= 500000) {
   val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
  } else {
   val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
    CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
  }
  I915_WRITE(MG_TX2_DCC(ln, port), val);
 }


 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_TX1_PISO_READLOAD(ln, port));
  val |= CRI_CALCINIT;
  I915_WRITE(MG_TX1_PISO_READLOAD(ln, port), val);

  val = I915_READ(MG_TX2_PISO_READLOAD(ln, port));
  val |= CRI_CALCINIT;
  I915_WRITE(MG_TX2_PISO_READLOAD(ln, port), val);
 }
}
