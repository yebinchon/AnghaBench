
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int chv_phy_control; int* chv_phy_assert; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ (* is_enabled ) (struct drm_i915_private*,struct i915_power_well*) ;} ;


 int CHV_DISP_PW_DPIO_CMN_D ;
 int DISPLAY_PHY_CONTROL ;
 int DPIO_CH0 ;
 int DPIO_CH1 ;
 size_t DPIO_PHY0 ;
 size_t DPIO_PHY1 ;
 int DPIO_PHY_STATUS ;
 int DPLL (int ) ;
 int DPLL_PORTB_READY_MASK ;
 int DPLL_PORTC_READY_MASK ;
 int DPLL_PORTD_READY_MASK ;
 int DRM_DEBUG_KMS (char*,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PHY_CH_DEEP_PSR ;
 int PHY_CH_POWER_DOWN_OVRD (unsigned int,size_t,int ) ;
 int PHY_CH_POWER_DOWN_OVRD_EN (size_t,int ) ;
 int PHY_CH_POWER_MODE (int ,size_t,int ) ;
 int PHY_COM_LANE_RESET_DEASSERT (size_t) ;
 int PHY_LDO_DELAY_600NS ;
 int PHY_LDO_SEQ_DELAY (int ,size_t) ;
 int PIPE_A ;
 int VLV_DISP_PW_DPIO_CMN_BC ;
 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int ) ;
 scalar_t__ stub1 (struct drm_i915_private*,struct i915_power_well*) ;
 scalar_t__ stub2 (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void chv_phy_control_init(struct drm_i915_private *dev_priv)
{
 struct i915_power_well *cmn_bc =
  lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 struct i915_power_well *cmn_d =
  lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
 dev_priv->chv_phy_control =
  PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY0) |
  PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY1) |
  PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY0, DPIO_CH0) |
  PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY0, DPIO_CH1) |
  PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY1, DPIO_CH0);
 if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
  u32 status = I915_READ(DPLL(PIPE_A));
  unsigned int mask;

  mask = status & DPLL_PORTB_READY_MASK;
  if (mask == 0xf)
   mask = 0x0;
  else
   dev_priv->chv_phy_control |=
    PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH0);

  dev_priv->chv_phy_control |=
   PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH0);

  mask = (status & DPLL_PORTC_READY_MASK) >> 4;
  if (mask == 0xf)
   mask = 0x0;
  else
   dev_priv->chv_phy_control |=
    PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH1);

  dev_priv->chv_phy_control |=
   PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH1);

  dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0);

  dev_priv->chv_phy_assert[DPIO_PHY0] = 0;
 } else {
  dev_priv->chv_phy_assert[DPIO_PHY0] = 1;
 }

 if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
  u32 status = I915_READ(DPIO_PHY_STATUS);
  unsigned int mask;

  mask = status & DPLL_PORTD_READY_MASK;

  if (mask == 0xf)
   mask = 0x0;
  else
   dev_priv->chv_phy_control |=
    PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1, DPIO_CH0);

  dev_priv->chv_phy_control |=
   PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY1, DPIO_CH0);

  dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1);

  dev_priv->chv_phy_assert[DPIO_PHY1] = 0;
 } else {
  dev_priv->chv_phy_assert[DPIO_PHY1] = 1;
 }

 I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);

 DRM_DEBUG_KMS("Initial PHY_CONTROL=0x%08x\n",
        dev_priv->chv_phy_control);
}
