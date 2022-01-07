
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gpll_ref_freq; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; int czclk_freq; } ;


 int CCK_GPLL_CLOCK_CONTROL ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int vlv_get_cck_clock (struct drm_i915_private*,char*,int ,int ) ;

__attribute__((used)) static void vlv_init_gpll_ref_freq(struct drm_i915_private *dev_priv)
{
 dev_priv->gt_pm.rps.gpll_ref_freq =
  vlv_get_cck_clock(dev_priv, "GPLL ref",
      CCK_GPLL_CLOCK_CONTROL,
      dev_priv->czclk_freq);

 DRM_DEBUG_DRIVER("GPLL reference freq: %d kHz\n",
    dev_priv->gt_pm.rps.gpll_ref_freq);
}
