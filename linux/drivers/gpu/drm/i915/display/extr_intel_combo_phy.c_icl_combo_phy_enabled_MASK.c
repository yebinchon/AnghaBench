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
 int COMP_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int PHY_C ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv,
				  enum phy phy)
{
	/* The PHY C added by EHL has no PHY_MISC register */
	if (FUNC3(dev_priv) && phy == PHY_C)
		return FUNC0(FUNC2(phy)) & COMP_INIT;
	else
		return !(FUNC0(FUNC1(phy)) &
			 ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN) &&
			(FUNC0(FUNC2(phy)) & COMP_INIT);
}