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
 scalar_t__ FUNC0 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private const*) ; 

__attribute__((used)) static unsigned int FUNC4(const struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv))
		return 16 * 1024;
	else if (FUNC2(dev_priv))
		return 256;
	else if (FUNC1(dev_priv) || FUNC3(dev_priv))
		return 32;
	else
		return 4 * 1024;
}