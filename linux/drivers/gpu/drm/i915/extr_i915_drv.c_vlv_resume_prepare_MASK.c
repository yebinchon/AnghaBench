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
 int FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_private *dev_priv,
				bool rpm_resume)
{
	int err;
	int ret;

	/*
	 * If any of the steps fail just try to continue, that's the best we
	 * can do at this point. Return the first error code (which will also
	 * leave RPM permanently disabled).
	 */
	ret = FUNC3(dev_priv, true);

	FUNC4(dev_priv);

	err = FUNC1(dev_priv, true);
	if (!ret)
		ret = err;

	err = FUNC3(dev_priv, false);
	if (!ret)
		ret = err;

	FUNC2(dev_priv);

	if (rpm_resume)
		FUNC0(dev_priv);

	return ret;
}