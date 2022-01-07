
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_rps {int max_freq_softlimit; int max_freq; int boost_freq; int idle_freq; int cur_freq; int min_freq; int min_freq_softlimit; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_4__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gt_pm; } ;
struct TYPE_5__ {int dev; } ;


 int BIT (int) ;
 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int DRM_INFO (char*) ;
 int GEN6_READ_OC_PARAMS ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cherryview_init_gt_powersave (struct drm_i915_private*) ;
 int gen6_init_rps_frequencies (struct drm_i915_private*) ;
 int i915_rc6_ctx_wa_init (struct drm_i915_private*) ;
 int pm_runtime_get (int *) ;
 int sandybridge_pcode_read (struct drm_i915_private*,int ,int*,int *) ;
 int sanitize_rc6 (struct drm_i915_private*) ;
 int valleyview_init_gt_powersave (struct drm_i915_private*) ;

void intel_init_gt_powersave(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;





 if (!sanitize_rc6(dev_priv)) {
  DRM_INFO("RC6 disabled, disabling runtime PM support\n");
  pm_runtime_get(&dev_priv->drm.pdev->dev);
 }

 i915_rc6_ctx_wa_init(dev_priv);


 if (IS_CHERRYVIEW(dev_priv))
  cherryview_init_gt_powersave(dev_priv);
 else if (IS_VALLEYVIEW(dev_priv))
  valleyview_init_gt_powersave(dev_priv);
 else if (INTEL_GEN(dev_priv) >= 6)
  gen6_init_rps_frequencies(dev_priv);


 rps->max_freq_softlimit = rps->max_freq;
 rps->min_freq_softlimit = rps->min_freq;


 if (IS_GEN(dev_priv, 6) ||
     IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv)) {
  u32 params = 0;

  sandybridge_pcode_read(dev_priv, GEN6_READ_OC_PARAMS,
           &params, ((void*)0));
  if (params & BIT(31)) {
   DRM_DEBUG_DRIVER("Overclocking supported, max: %dMHz, overclock: %dMHz\n",
      (rps->max_freq & 0xff) * 50,
      (params & 0xff) * 50);
   rps->max_freq = params & 0xff;
  }
 }


 rps->boost_freq = rps->max_freq;
 rps->idle_freq = rps->min_freq;
 rps->cur_freq = rps->idle_freq;
}
