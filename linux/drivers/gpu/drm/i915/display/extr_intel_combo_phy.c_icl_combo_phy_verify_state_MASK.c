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
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  CL_POWER_DOWN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IREFGEN ; 
 int PHY_A ; 
 int FUNC2 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static bool FUNC5(struct drm_i915_private *dev_priv,
				       enum phy phy)
{
	bool ret;

	if (!FUNC4(dev_priv, phy))
		return false;

	ret = FUNC3(dev_priv, phy);

	if (phy == PHY_A)
		ret &= FUNC2(dev_priv, phy, FUNC1(phy),
				     IREFGEN, IREFGEN);

	ret &= FUNC2(dev_priv, phy, FUNC0(phy),
			     CL_POWER_DOWN_ENABLE, CL_POWER_DOWN_ENABLE);

	return ret;
}