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
typedef  scalar_t__ u8 ;
struct intel_rps {scalar_t__ max_freq; scalar_t__ min_freq; scalar_t__ cur_freq; int /*<<< orphan*/  enabled; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_i915_private*,scalar_t__) ; 

int FUNC6(struct drm_i915_private *dev_priv, u8 val)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	int err;

	FUNC4(&rps->lock);
	FUNC0(val > rps->max_freq);
	FUNC0(val < rps->min_freq);

	if (!rps->enabled) {
		rps->cur_freq = val;
		return 0;
	}

	if (FUNC2(dev_priv) || FUNC1(dev_priv))
		err = FUNC5(dev_priv, val);
	else
		err = FUNC3(dev_priv, val);

	return err;
}