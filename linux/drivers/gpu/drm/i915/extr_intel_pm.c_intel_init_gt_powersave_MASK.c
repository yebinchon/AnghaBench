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
typedef  int u32 ;
struct intel_rps {int max_freq_softlimit; int max_freq; int boost_freq; int /*<<< orphan*/  idle_freq; int /*<<< orphan*/  cur_freq; int /*<<< orphan*/  min_freq; int /*<<< orphan*/  min_freq_softlimit; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_4__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gt_pm; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GEN6_READ_OC_PARAMS ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 

void FUNC16(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	/*
	 * RPM depends on RC6 to save restore the GT HW context, so make RC6 a
	 * requirement.
	 */
	if (!FUNC14(dev_priv)) {
		FUNC2("RC6 disabled, disabling runtime PM support\n");
		FUNC12(&dev_priv->drm.pdev->dev);
	}

	FUNC11(dev_priv);

	/* Initialize RPS limits (for userspace) */
	if (FUNC4(dev_priv))
		FUNC9(dev_priv);
	else if (FUNC8(dev_priv))
		FUNC15(dev_priv);
	else if (FUNC3(dev_priv) >= 6)
		FUNC10(dev_priv);

	/* Derive initial user preferences/limits from the hardware limits */
	rps->max_freq_softlimit = rps->max_freq;
	rps->min_freq_softlimit = rps->min_freq;

	/* After setting max-softlimit, find the overclock max freq */
	if (FUNC5(dev_priv, 6) ||
	    FUNC7(dev_priv) || FUNC6(dev_priv)) {
		u32 params = 0;

		FUNC13(dev_priv, GEN6_READ_OC_PARAMS,
				       &params, NULL);
		if (params & FUNC0(31)) { /* OC supported */
			FUNC1("Overclocking supported, max: %dMHz, overclock: %dMHz\n",
					 (rps->max_freq & 0xff) * 50,
					 (params & 0xff) * 50);
			rps->max_freq = params & 0xff;
		}
	}

	/* Finally allow us to boost to max by default */
	rps->boost_freq = rps->max_freq;
	rps->idle_freq = rps->min_freq;
	rps->cur_freq = rps->idle_freq;
}