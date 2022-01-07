
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_domains {int power_well_count; int async_put_work; int lock; } ;
struct TYPE_3__ {int allowed_dc_mask; } ;
struct drm_i915_private {TYPE_1__ csr; struct i915_power_domains power_domains; } ;
struct TYPE_4__ {int enable_dc; int disable_power_well; } ;


 int BUILD_BUG_ON (int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int IS_CNL_WITH_PORT_F (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int POWER_DOMAIN_NUM ;
 int bdw_power_wells ;
 int bxt_power_wells ;
 int chv_power_wells ;
 int cnl_power_wells ;
 int get_allowed_dc_mask (struct drm_i915_private*,int ) ;
 int glk_power_wells ;
 int hsw_power_wells ;
 int i830_power_wells ;
 TYPE_2__ i915_modparams ;
 int i9xx_always_on_power_well ;
 int icl_power_wells ;
 int intel_display_power_put_async_work ;
 int mutex_init (int *) ;
 int sanitize_disable_power_well_option (struct drm_i915_private*,int ) ;
 int set_power_wells (struct i915_power_domains*,int ) ;
 int skl_power_wells ;
 int tgl_power_wells ;
 int vlv_power_wells ;

int intel_power_domains_init(struct drm_i915_private *dev_priv)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 int err;

 i915_modparams.disable_power_well =
  sanitize_disable_power_well_option(dev_priv,
         i915_modparams.disable_power_well);
 dev_priv->csr.allowed_dc_mask =
  get_allowed_dc_mask(dev_priv, i915_modparams.enable_dc);

 BUILD_BUG_ON(POWER_DOMAIN_NUM > 64);

 mutex_init(&power_domains->lock);

 INIT_DELAYED_WORK(&power_domains->async_put_work,
     intel_display_power_put_async_work);





 if (IS_GEN(dev_priv, 12)) {
  err = set_power_wells(power_domains, tgl_power_wells);
 } else if (IS_GEN(dev_priv, 11)) {
  err = set_power_wells(power_domains, icl_power_wells);
 } else if (IS_CANNONLAKE(dev_priv)) {
  err = set_power_wells(power_domains, cnl_power_wells);







  if (!IS_CNL_WITH_PORT_F(dev_priv))
   power_domains->power_well_count -= 2;
 } else if (IS_GEMINILAKE(dev_priv)) {
  err = set_power_wells(power_domains, glk_power_wells);
 } else if (IS_BROXTON(dev_priv)) {
  err = set_power_wells(power_domains, bxt_power_wells);
 } else if (IS_GEN9_BC(dev_priv)) {
  err = set_power_wells(power_domains, skl_power_wells);
 } else if (IS_CHERRYVIEW(dev_priv)) {
  err = set_power_wells(power_domains, chv_power_wells);
 } else if (IS_BROADWELL(dev_priv)) {
  err = set_power_wells(power_domains, bdw_power_wells);
 } else if (IS_HASWELL(dev_priv)) {
  err = set_power_wells(power_domains, hsw_power_wells);
 } else if (IS_VALLEYVIEW(dev_priv)) {
  err = set_power_wells(power_domains, vlv_power_wells);
 } else if (IS_I830(dev_priv)) {
  err = set_power_wells(power_domains, i830_power_wells);
 } else {
  err = set_power_wells(power_domains, i9xx_always_on_power_well);
 }

 return err;
}
