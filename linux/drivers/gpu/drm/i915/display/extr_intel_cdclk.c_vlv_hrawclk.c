
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CCK_DISPLAY_REF_CLOCK_CONTROL ;
 int vlv_get_cck_clock_hpll (struct drm_i915_private*,char*,int ) ;

__attribute__((used)) static int vlv_hrawclk(struct drm_i915_private *dev_priv)
{

 return vlv_get_cck_clock_hpll(dev_priv, "hrawclk",
          CCK_DISPLAY_REF_CLOCK_CONTROL);
}
