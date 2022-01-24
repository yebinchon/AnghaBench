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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*) ; 

int FUNC3(struct drm_i915_private *dev_priv)
{
	int ret = -ENODEV;

	if (FUNC1(dev_priv)) {
		ret = FUNC2(dev_priv);
		if (ret < 0)
			FUNC0("failed to setup LPE Audio bridge\n");
	}
	return ret;
}