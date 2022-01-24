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
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv,
			    unsigned int stride)
{
	/* This should have been caught earlier. */
	if (FUNC2((stride & (64 - 1)) != 0))
		return false;

	/* Below are the additional FBC restrictions. */
	if (stride < 512)
		return false;

	if (FUNC1(dev_priv, 2) || FUNC1(dev_priv, 3))
		return stride == 4096 || stride == 8192;

	if (FUNC1(dev_priv, 4) && !FUNC0(dev_priv) && stride < 2048)
		return false;

	if (stride > 16384)
		return false;

	return true;
}