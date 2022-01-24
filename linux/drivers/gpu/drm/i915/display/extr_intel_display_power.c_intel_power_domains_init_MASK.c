#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i915_power_domains {int power_well_count; int /*<<< orphan*/  async_put_work; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  allowed_dc_mask; } ;
struct drm_i915_private {TYPE_1__ csr; struct i915_power_domains power_domains; } ;
struct TYPE_4__ {int /*<<< orphan*/  enable_dc; int /*<<< orphan*/  disable_power_well; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 int POWER_DOMAIN_NUM ; 
 int /*<<< orphan*/  bdw_power_wells ; 
 int /*<<< orphan*/  bxt_power_wells ; 
 int /*<<< orphan*/  chv_power_wells ; 
 int /*<<< orphan*/  cnl_power_wells ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glk_power_wells ; 
 int /*<<< orphan*/  hsw_power_wells ; 
 int /*<<< orphan*/  i830_power_wells ; 
 TYPE_2__ i915_modparams ; 
 int /*<<< orphan*/  i9xx_always_on_power_well ; 
 int /*<<< orphan*/  icl_power_wells ; 
 int /*<<< orphan*/  intel_display_power_put_async_work ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct i915_power_domains*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skl_power_wells ; 
 int /*<<< orphan*/  tgl_power_wells ; 
 int /*<<< orphan*/  vlv_power_wells ; 

int FUNC17(struct drm_i915_private *dev_priv)
{
	struct i915_power_domains *power_domains = &dev_priv->power_domains;
	int err;

	i915_modparams.disable_power_well =
		FUNC15(dev_priv,
						   i915_modparams.disable_power_well);
	dev_priv->csr.allowed_dc_mask =
		FUNC13(dev_priv, i915_modparams.enable_dc);

	FUNC0(POWER_DOMAIN_NUM > 64);

	FUNC14(&power_domains->lock);

	FUNC1(&power_domains->async_put_work,
			  intel_display_power_put_async_work);

	/*
	 * The enabling order will be from lower to higher indexed wells,
	 * the disabling order is reversed.
	 */
	if (FUNC8(dev_priv, 12)) {
		err = FUNC16(power_domains, tgl_power_wells);
	} else if (FUNC8(dev_priv, 11)) {
		err = FUNC16(power_domains, icl_power_wells);
	} else if (FUNC4(dev_priv)) {
		err = FUNC16(power_domains, cnl_power_wells);

		/*
		 * DDI and Aux IO are getting enabled for all ports
		 * regardless the presence or use. So, in order to avoid
		 * timeouts, lets remove them from the list
		 * for the SKUs without port F.
		 */
		if (!FUNC6(dev_priv))
			power_domains->power_well_count -= 2;
	} else if (FUNC7(dev_priv)) {
		err = FUNC16(power_domains, glk_power_wells);
	} else if (FUNC3(dev_priv)) {
		err = FUNC16(power_domains, bxt_power_wells);
	} else if (FUNC9(dev_priv)) {
		err = FUNC16(power_domains, skl_power_wells);
	} else if (FUNC5(dev_priv)) {
		err = FUNC16(power_domains, chv_power_wells);
	} else if (FUNC2(dev_priv)) {
		err = FUNC16(power_domains, bdw_power_wells);
	} else if (FUNC10(dev_priv)) {
		err = FUNC16(power_domains, hsw_power_wells);
	} else if (FUNC12(dev_priv)) {
		err = FUNC16(power_domains, vlv_power_wells);
	} else if (FUNC11(dev_priv)) {
		err = FUNC16(power_domains, i830_power_wells);
	} else {
		err = FUNC16(power_domains, i9xx_always_on_power_well);
	}

	return err;
}