#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_fbc {int enabled; int active; char* no_fbc_reason; int /*<<< orphan*/  lock; int /*<<< orphan*/  underrun_work; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_6__ {int /*<<< orphan*/  enable_fbc; } ;
struct TYPE_4__ {int has_fbc; } ;
struct TYPE_5__ {TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FBC_CONTROL ; 
 int FBC_CTL_INTERVAL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 TYPE_3__ i915_modparams ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  intel_fbc_underrun_work_fn ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 TYPE_2__* FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 

void FUNC12(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	FUNC3(&fbc->underrun_work, intel_fbc_underrun_work_fn);
	FUNC10(&fbc->lock);
	fbc->enabled = false;
	fbc->active = false;

	if (FUNC11(dev_priv))
		FUNC9(dev_priv)->display.has_fbc = false;

	i915_modparams.enable_fbc = FUNC8(dev_priv);
	FUNC0("Sanitized enable_fbc value: %d\n",
		      i915_modparams.enable_fbc);

	if (!FUNC1(dev_priv)) {
		fbc->no_fbc_reason = "unsupported by this chipset";
		return;
	}

	/* This value was pulled out of someone's hat */
	if (FUNC4(dev_priv) <= 4 && !FUNC5(dev_priv))
		FUNC2(FBC_CONTROL, 500 << FBC_CTL_INTERVAL_SHIFT);

	/* We still don't have any sort of hardware state readout for FBC, so
	 * deactivate it in case the BIOS activated it to make sure software
	 * matches the hardware state. */
	if (FUNC7(dev_priv))
		FUNC6(dev_priv);
}