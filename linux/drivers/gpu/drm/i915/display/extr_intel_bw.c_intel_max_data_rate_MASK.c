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
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct drm_i915_private *dev_priv,
					int num_planes)
{
	if (FUNC0(dev_priv, 11))
		/*
		 * FIXME with SAGV disabled maybe we can assume
		 * point 1 will always be used? Seems to match
		 * the behaviour observed in the wild.
		 */
		return FUNC2(FUNC1(dev_priv, num_planes, 0),
			    FUNC1(dev_priv, num_planes, 1),
			    FUNC1(dev_priv, num_planes, 2));
	else
		return UINT_MAX;
}