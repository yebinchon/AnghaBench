
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ICL_PORT_CL_DW10 (int) ;
 int MISSING_CASE (int) ;
 int PWR_DOWN_LN_1_0 ;
 int PWR_DOWN_LN_2_1_0 ;
 int PWR_DOWN_LN_3 ;
 int PWR_DOWN_LN_3_1 ;
 int PWR_DOWN_LN_3_1_0 ;
 int PWR_DOWN_LN_3_2 ;
 int PWR_DOWN_LN_3_2_1 ;
 int PWR_DOWN_LN_MASK ;
 int PWR_DOWN_LN_SHIFT ;
 int PWR_UP_ALL_LANES ;
 int WARN_ON (int) ;

void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
        enum phy phy, bool is_dsi,
        int lane_count, bool lane_reversal)
{
 u8 lane_mask;
 u32 val;

 if (is_dsi) {
  WARN_ON(lane_reversal);

  switch (lane_count) {
  case 1:
   lane_mask = PWR_DOWN_LN_3_1_0;
   break;
  case 2:
   lane_mask = PWR_DOWN_LN_3_1;
   break;
  case 3:
   lane_mask = PWR_DOWN_LN_3;
   break;
  default:
   MISSING_CASE(lane_count);

  case 4:
   lane_mask = PWR_UP_ALL_LANES;
   break;
  }
 } else {
  switch (lane_count) {
  case 1:
   lane_mask = lane_reversal ? PWR_DOWN_LN_2_1_0 :
          PWR_DOWN_LN_3_2_1;
   break;
  case 2:
   lane_mask = lane_reversal ? PWR_DOWN_LN_1_0 :
          PWR_DOWN_LN_3_2;
   break;
  default:
   MISSING_CASE(lane_count);

  case 4:
   lane_mask = PWR_UP_ALL_LANES;
   break;
  }
 }

 val = I915_READ(ICL_PORT_CL_DW10(phy));
 val &= ~PWR_DOWN_LN_MASK;
 val |= lane_mask << PWR_DOWN_LN_SHIFT;
 I915_WRITE(ICL_PORT_CL_DW10(phy), val);
}
