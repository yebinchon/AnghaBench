
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int chv_phy_control; int * chv_phy_assert; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ (* is_enabled ) (struct drm_i915_private*,struct i915_power_well*) ;} ;


 scalar_t__ BITS_SET (int,int) ;
 int CHV_DISP_PW_DPIO_CMN_D ;
 int DISPLAY_PHY_STATUS ;
 int DPIO_CH0 ;
 int DPIO_CH1 ;
 size_t DPIO_PHY0 ;
 size_t DPIO_PHY1 ;
 int DPLL (int ) ;
 int DPLL_VCO_ENABLE ;
 int DRM_ERROR (char*,int,int,int) ;
 int I915_READ (int ) ;
 int PHY_CH_POWER_DOWN_OVRD (int,size_t,int ) ;
 int PHY_CH_POWER_DOWN_OVRD_EN (size_t,int ) ;
 int PHY_POWERGOOD (size_t) ;
 int PHY_STATUS_CMN_LDO (size_t,int ) ;
 int PHY_STATUS_SPLINE_LDO (size_t,int ,int) ;
 int PIPE_B ;
 int VLV_DISP_PW_DPIO_CMN_BC ;
 scalar_t__ intel_de_wait_for_register (struct drm_i915_private*,int ,int,int,int) ;
 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int ) ;
 scalar_t__ stub1 (struct drm_i915_private*,struct i915_power_well*) ;
 scalar_t__ stub2 (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
{
 struct i915_power_well *cmn_bc =
  lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 struct i915_power_well *cmn_d =
  lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
 u32 phy_control = dev_priv->chv_phy_control;
 u32 phy_status = 0;
 u32 phy_status_mask = 0xffffffff;
 if (!dev_priv->chv_phy_assert[DPIO_PHY0])
  phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1) |
         PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1));

 if (!dev_priv->chv_phy_assert[DPIO_PHY1])
  phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
         PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));

 if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
  phy_status |= PHY_POWERGOOD(DPIO_PHY0);


  if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH0)) == 0)
   phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH0);

  if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH1)) == 0)
   phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1);


  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH0) |
        PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)))
   phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0);






  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
      (I915_READ(DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
   phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);

  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0, DPIO_CH0)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0);
  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0, DPIO_CH0)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1);

  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0, DPIO_CH1)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0);
  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0, DPIO_CH1)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1);
 }

 if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
  phy_status |= PHY_POWERGOOD(DPIO_PHY1);


  if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1, DPIO_CH0)) == 0)
   phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY1, DPIO_CH0);

  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY1, DPIO_CH0)))
   phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0);

  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY1, DPIO_CH0)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0);
  if (BITS_SET(phy_control,
        PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY1, DPIO_CH0)))
   phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1);
 }

 phy_status &= phy_status_mask;





 if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
           phy_status_mask, phy_status, 10))
  DRM_ERROR("Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
     I915_READ(DISPLAY_PHY_STATUS) & phy_status_mask,
      phy_status, dev_priv->chv_phy_control);
}
