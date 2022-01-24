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
 scalar_t__ FUNC3 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private const*) ; 

__attribute__((used)) static unsigned int FUNC5(const struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv) >= 9)
		return 256 * 1024;
	else if (FUNC2(dev_priv) || FUNC3(dev_priv) ||
		 FUNC4(dev_priv) || FUNC1(dev_priv))
		return 128 * 1024;
	else if (FUNC0(dev_priv) >= 4)
		return 4 * 1024;
	else
		return 0;
}