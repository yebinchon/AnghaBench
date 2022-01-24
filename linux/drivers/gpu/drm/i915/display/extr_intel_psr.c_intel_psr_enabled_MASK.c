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
struct intel_dp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ enabled; struct intel_dp* dp; } ;
struct drm_i915_private {TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);
	bool ret;

	if (!FUNC0(dev_priv) || !FUNC2(intel_dp))
		return false;

	FUNC3(&dev_priv->psr.lock);
	ret = (dev_priv->psr.dp == intel_dp && dev_priv->psr.enabled);
	FUNC4(&dev_priv->psr.lock);

	return ret;
}