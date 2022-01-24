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
struct intel_rps {int enabled; scalar_t__ max_freq; scalar_t__ min_freq; scalar_t__ idle_freq; scalar_t__ efficient_freq; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC14(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	FUNC12(&rps->lock);

	if (rps->enabled)
		return;

	if (FUNC2(dev_priv)) {
		FUNC6(dev_priv);
	} else if (FUNC4(dev_priv)) {
		FUNC13(dev_priv);
	} else if (FUNC0(dev_priv) >= 9) {
		FUNC9(dev_priv);
	} else if (FUNC1(dev_priv)) {
		FUNC8(dev_priv);
	} else if (FUNC0(dev_priv) >= 6) {
		FUNC7(dev_priv);
	} else if (FUNC3(dev_priv)) {
		FUNC11(dev_priv);
		FUNC10(dev_priv);
	}

	FUNC5(rps->max_freq < rps->min_freq);
	FUNC5(rps->idle_freq > rps->max_freq);

	FUNC5(rps->efficient_freq < rps->min_freq);
	FUNC5(rps->efficient_freq > rps->max_freq);

	rps->enabled = true;
}