
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_power_domains {int initializing; int wakeref; int lock; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;
struct TYPE_2__ {int disable_power_well; } ;


 int HAS_PCH_NOP (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int POWER_DOMAIN_INIT ;
 int assert_isp_power_gated (struct drm_i915_private*) ;
 int assert_ved_power_gated (struct drm_i915_private*) ;
 int bxt_display_core_init (struct drm_i915_private*,int) ;
 int chv_phy_control_init (struct drm_i915_private*) ;
 int cnl_display_core_init (struct drm_i915_private*,int) ;
 int hsw_assert_cdclk (struct drm_i915_private*) ;
 TYPE_1__ i915_modparams ;
 int icl_display_core_init (struct drm_i915_private*,int) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_pch_reset_handshake (struct drm_i915_private*,int) ;
 int intel_power_domains_sync_hw (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skl_display_core_init (struct drm_i915_private*,int) ;
 int vlv_cmnlane_wa (struct drm_i915_private*) ;

void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
{
 struct i915_power_domains *power_domains = &i915->power_domains;

 power_domains->initializing = 1;

 if (INTEL_GEN(i915) >= 11) {
  icl_display_core_init(i915, resume);
 } else if (IS_CANNONLAKE(i915)) {
  cnl_display_core_init(i915, resume);
 } else if (IS_GEN9_BC(i915)) {
  skl_display_core_init(i915, resume);
 } else if (IS_GEN9_LP(i915)) {
  bxt_display_core_init(i915, resume);
 } else if (IS_CHERRYVIEW(i915)) {
  mutex_lock(&power_domains->lock);
  chv_phy_control_init(i915);
  mutex_unlock(&power_domains->lock);
  assert_isp_power_gated(i915);
 } else if (IS_VALLEYVIEW(i915)) {
  mutex_lock(&power_domains->lock);
  vlv_cmnlane_wa(i915);
  mutex_unlock(&power_domains->lock);
  assert_ved_power_gated(i915);
  assert_isp_power_gated(i915);
 } else if (IS_BROADWELL(i915) || IS_HASWELL(i915)) {
  hsw_assert_cdclk(i915);
  intel_pch_reset_handshake(i915, !HAS_PCH_NOP(i915));
 } else if (IS_IVYBRIDGE(i915)) {
  intel_pch_reset_handshake(i915, !HAS_PCH_NOP(i915));
 }







 power_domains->wakeref =
  intel_display_power_get(i915, POWER_DOMAIN_INIT);


 if (!i915_modparams.disable_power_well)
  intel_display_power_get(i915, POWER_DOMAIN_INIT);
 intel_power_domains_sync_hw(i915);

 power_domains->initializing = 0;
}
