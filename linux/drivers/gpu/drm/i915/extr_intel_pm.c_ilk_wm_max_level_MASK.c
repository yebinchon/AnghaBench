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
 int FUNC0 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private const*) ; 

int FUNC3(const struct drm_i915_private *dev_priv)
{
	/* how many WM levels are we expecting */
	if (FUNC0(dev_priv) >= 9)
		return 7;
	else if (FUNC2(dev_priv) || FUNC1(dev_priv))
		return 4;
	else if (FUNC0(dev_priv) >= 6)
		return 3;
	else
		return 2;
}