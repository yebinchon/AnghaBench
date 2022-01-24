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
struct drm_i915_private {int max_cdclk_freq; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC6(struct drm_i915_private *dev_priv)
{
	int max_cdclk_freq = dev_priv->max_cdclk_freq;

	if (FUNC0(dev_priv) >= 10 || FUNC3(dev_priv))
		return 2 * max_cdclk_freq;
	else if (FUNC4(dev_priv, 9) ||
		 FUNC1(dev_priv) || FUNC5(dev_priv))
		return max_cdclk_freq;
	else if (FUNC2(dev_priv))
		return max_cdclk_freq*95/100;
	else if (FUNC0(dev_priv) < 4)
		return 2*max_cdclk_freq*90/100;
	else
		return max_cdclk_freq*90/100;
}