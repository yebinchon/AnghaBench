
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DPIO_CMNRST ;
 int DPIO_CTL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int udelay (int) ;
 int vlv_set_power_well (struct drm_i915_private*,struct i915_power_well*,int) ;

__attribute__((used)) static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{

 udelay(1);

 vlv_set_power_well(dev_priv, power_well, 1);
 I915_WRITE(DPIO_CTL, I915_READ(DPIO_CTL) | DPIO_CMNRST);
}
