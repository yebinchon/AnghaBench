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
struct intel_rps {int /*<<< orphan*/  lock; scalar_t__ last_adj; int /*<<< orphan*/  idle_freq; scalar_t__ enabled; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 

void FUNC9(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	/* Flush our bottom-half so that it does not race with us
	 * setting the idle frequency and so that it is bounded by
	 * our rpm wakeref. And then disable the interrupts to stop any
	 * futher RPS reclocking whilst we are asleep.
	 */
	FUNC3(dev_priv);

	FUNC6(&rps->lock);
	if (rps->enabled) {
		if (FUNC2(dev_priv) || FUNC1(dev_priv))
			FUNC8(dev_priv);
		else
			FUNC5(dev_priv, rps->idle_freq);
		rps->last_adj = 0;
		FUNC0(GEN6_PMINTRMSK,
			   FUNC4(dev_priv, ~0));
	}
	FUNC7(&rps->lock);
}