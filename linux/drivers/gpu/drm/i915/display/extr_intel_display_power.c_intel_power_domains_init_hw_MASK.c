#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_power_domains {int initializing; int /*<<< orphan*/  wakeref; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;
struct TYPE_2__ {int /*<<< orphan*/  disable_power_well; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  POWER_DOMAIN_INIT ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 TYPE_1__ i915_modparams ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*) ; 

void FUNC24(struct drm_i915_private *i915, bool resume)
{
	struct i915_power_domains *power_domains = &i915->power_domains;

	power_domains->initializing = true;

	if (FUNC1(i915) >= 11) {
		FUNC16(i915, resume);
	} else if (FUNC3(i915)) {
		FUNC14(i915, resume);
	} else if (FUNC5(i915)) {
		FUNC22(i915, resume);
	} else if (FUNC6(i915)) {
		FUNC12(i915, resume);
	} else if (FUNC4(i915)) {
		FUNC20(&power_domains->lock);
		FUNC13(i915);
		FUNC21(&power_domains->lock);
		FUNC10(i915);
	} else if (FUNC9(i915)) {
		FUNC20(&power_domains->lock);
		FUNC23(i915);
		FUNC21(&power_domains->lock);
		FUNC11(i915);
		FUNC10(i915);
	} else if (FUNC2(i915) || FUNC7(i915)) {
		FUNC15(i915);
		FUNC18(i915, !FUNC0(i915));
	} else if (FUNC8(i915)) {
		FUNC18(i915, !FUNC0(i915));
	}

	/*
	 * Keep all power wells enabled for any dependent HW access during
	 * initialization and to make sure we keep BIOS enabled display HW
	 * resources powered until display HW readout is complete. We drop
	 * this reference in intel_power_domains_enable().
	 */
	power_domains->wakeref =
		FUNC17(i915, POWER_DOMAIN_INIT);

	/* Disable power support if the user asked so. */
	if (!i915_modparams.disable_power_well)
		FUNC17(i915, POWER_DOMAIN_INIT);
	FUNC19(i915);

	power_domains->initializing = false;
}