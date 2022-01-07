
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CCK_FREQUENCY_STATUS ;
 int CCK_FREQUENCY_STATUS_SHIFT ;
 int CCK_FREQUENCY_VALUES ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int WARN (int,char*,char const*) ;
 int vlv_cck_read (struct drm_i915_private*,int) ;

int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
        const char *name, u32 reg, int ref_freq)
{
 u32 val;
 int divider;

 val = vlv_cck_read(dev_priv, reg);
 divider = val & CCK_FREQUENCY_VALUES;

 WARN((val & CCK_FREQUENCY_STATUS) !=
      (divider << CCK_FREQUENCY_STATUS_SHIFT),
      "%s change in progress\n", name);

 return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
}
