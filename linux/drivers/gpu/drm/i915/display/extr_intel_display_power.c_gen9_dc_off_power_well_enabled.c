
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN ;
 int DC_STATE_EN_UPTO_DC5_DC6_MASK ;
 int I915_READ (int ) ;

__attribute__((used)) static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{
 return (I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0;
}
