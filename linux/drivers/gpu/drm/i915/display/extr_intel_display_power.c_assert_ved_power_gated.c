
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int PUNIT_REG_VEDSSPM0 ;
 int WARN (int,char*) ;
 int vlv_punit_is_power_gated (struct drm_i915_private*,int ) ;

__attribute__((used)) static void assert_ved_power_gated(struct drm_i915_private *dev_priv)
{
 WARN(!vlv_punit_is_power_gated(dev_priv, PUNIT_REG_VEDSSPM0),
      "VED not power gated\n");
}
