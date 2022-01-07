
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well {TYPE_1__* desc; } ;
struct drm_i915_private {int chv_phy_control; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
struct TYPE_2__ {scalar_t__ id; } ;


 int CHV_CMN_DW28 ;
 int CHV_CMN_DW30 ;
 scalar_t__ CHV_DISP_PW_DPIO_CMN_D ;
 int DISPLAY_PHY_CONTROL ;
 int DISPLAY_PHY_STATUS ;
 int DPIO_CL1POWERDOWNEN ;
 int DPIO_CL2_LDOFUSE_PWRENB ;
 int DPIO_DYNPWRDOWNEN_CH0 ;
 int DPIO_DYNPWRDOWNEN_CH1 ;
 int DPIO_PHY0 ;
 int DPIO_PHY1 ;
 int DPIO_SUS_CLK_CONFIG_GATE_CLKREQ ;
 int DRM_DEBUG_KMS (char*,int,int ) ;
 int DRM_ERROR (char*,int) ;
 int I915_WRITE (int ,int ) ;
 int PHY_COM_LANE_RESET_DEASSERT (int) ;
 int PHY_POWERGOOD (int) ;
 int PIPE_A ;
 int PIPE_C ;
 scalar_t__ VLV_DISP_PW_DPIO_CMN_BC ;
 int WARN_ON_ONCE (int) ;
 int _CHV_CMN_DW6_CH1 ;
 int assert_chv_phy_status (struct drm_i915_private*) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 int udelay (int) ;
 int vlv_dpio_get (struct drm_i915_private*) ;
 int vlv_dpio_put (struct drm_i915_private*) ;
 int vlv_dpio_read (struct drm_i915_private*,int,int ) ;
 int vlv_dpio_write (struct drm_i915_private*,int,int ,int) ;
 int vlv_set_power_well (struct drm_i915_private*,struct i915_power_well*,int) ;

__attribute__((used)) static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{
 enum dpio_phy phy;
 enum pipe pipe;
 u32 tmp;

 WARN_ON_ONCE(power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
       power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);

 if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
  pipe = PIPE_A;
  phy = DPIO_PHY0;
 } else {
  pipe = PIPE_C;
  phy = DPIO_PHY1;
 }


 udelay(1);
 vlv_set_power_well(dev_priv, power_well, 1);


 if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
      PHY_POWERGOOD(phy), 1))
  DRM_ERROR("Display PHY %d is not power up\n", phy);

 vlv_dpio_get(dev_priv);


 tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW28);
 tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
  DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
 vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW28, tmp);

 if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
  tmp = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW6_CH1);
  tmp |= DPIO_DYNPWRDOWNEN_CH1;
  vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
 } else {





  tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW30);
  tmp |= DPIO_CL2_LDOFUSE_PWRENB;
  vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW30, tmp);
 }

 vlv_dpio_put(dev_priv);

 dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
 I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);

 DRM_DEBUG_KMS("Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
        phy, dev_priv->chv_phy_control);

 assert_chv_phy_status(dev_priv);
}
