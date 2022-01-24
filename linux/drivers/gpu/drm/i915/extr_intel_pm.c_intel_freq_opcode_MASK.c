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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int GEN9_FREQ_SCALER ; 
 int /*<<< orphan*/  GT_FREQUENCY_MULTIPLIER ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 

int FUNC6(struct drm_i915_private *dev_priv, int val)
{
	if (FUNC1(dev_priv) >= 9)
		return FUNC0(val * GEN9_FREQ_SCALER,
					 GT_FREQUENCY_MULTIPLIER);
	else if (FUNC2(dev_priv))
		return FUNC5(dev_priv, val);
	else if (FUNC3(dev_priv))
		return FUNC4(dev_priv, val);
	else
		return FUNC0(val, GT_FREQUENCY_MULTIPLIER);
}