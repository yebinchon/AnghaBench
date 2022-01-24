#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_i915_private {scalar_t__ sagv_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GEN9_PCODE_SAGV_CONTROL ; 
 int /*<<< orphan*/  GEN9_SAGV_DISABLE ; 
 int /*<<< orphan*/  GEN9_SAGV_IS_DISABLED ; 
 scalar_t__ I915_SAGV_DISABLED ; 
 scalar_t__ I915_SAGV_NOT_CONTROLLED ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct drm_i915_private *dev_priv)
{
	int ret;

	if (!FUNC4(dev_priv))
		return 0;

	if (dev_priv->sagv_status == I915_SAGV_DISABLED)
		return 0;

	FUNC1("Disabling SAGV\n");
	/* bspec says to keep retrying for at least 1 ms */
	ret = FUNC5(dev_priv, GEN9_PCODE_SAGV_CONTROL,
				GEN9_SAGV_DISABLE,
				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
				1);
	/*
	 * Some skl systems, pre-release machines in particular,
	 * don't actually have SAGV.
	 */
	if (FUNC3(dev_priv) && ret == -ENXIO) {
		FUNC0("No SAGV found on system, ignoring\n");
		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
		return 0;
	} else if (ret < 0) {
		FUNC2("Failed to disable SAGV (%d)\n", ret);
		return ret;
	}

	dev_priv->sagv_status = I915_SAGV_DISABLED;
	return 0;
}