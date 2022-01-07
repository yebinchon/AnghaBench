
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int SSPM0_SSC_MASK ;
 int SSPM0_SSC_PWR_GATE ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0)
{
 bool ret;

 vlv_punit_get(dev_priv);
 ret = (vlv_punit_read(dev_priv, reg0) & SSPM0_SSC_MASK) == SSPM0_SSC_PWR_GATE;
 vlv_punit_put(dev_priv);

 return ret;
}
