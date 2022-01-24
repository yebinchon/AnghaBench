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
typedef  int /*<<< orphan*/  u8 ;
struct intel_rps {int /*<<< orphan*/  lock; int /*<<< orphan*/  max_freq_softlimit; int /*<<< orphan*/  min_freq_softlimit; int /*<<< orphan*/  efficient_freq; int /*<<< orphan*/  cur_freq; scalar_t__ enabled; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int GEN6_PM_RP_UP_EI_EXPIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	FUNC8(&rps->lock);
	if (rps->enabled) {
		u8 freq;

		if (dev_priv->pm_rps_events & GEN6_PM_RP_UP_EI_EXPIRED)
			FUNC5(dev_priv);
		FUNC1(GEN6_PMINTRMSK,
			   FUNC4(dev_priv, rps->cur_freq));

		FUNC3(dev_priv);

		/* Use the user's desired frequency as a guide, but for better
		 * performance, jump directly to RPe as our starting frequency.
		 */
		freq = FUNC7(rps->cur_freq,
			   rps->efficient_freq);

		if (FUNC6(dev_priv,
				  FUNC2(freq,
					rps->min_freq_softlimit,
					rps->max_freq_softlimit)))
			FUNC0("Failed to set idle frequency\n");
	}
	FUNC9(&rps->lock);
}