#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  int_crt_support; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;

/* Variables and functions */
 int DDI_A_4_LANES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PORT_A ; 
 int /*<<< orphan*/  SFUSE_STRAP ; 
 int SFUSE_STRAP_CRT_DISABLED ; 

__attribute__((used)) static bool FUNC6(struct drm_i915_private *dev_priv)
{
	if (FUNC3(dev_priv) >= 9)
		return false;

	if (FUNC5(dev_priv) || FUNC4(dev_priv))
		return false;

	if (FUNC1(dev_priv) &&
	    FUNC2(SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
		return false;

	/* DDI E can't be used if DDI A requires 4 lanes */
	if (FUNC2(FUNC0(PORT_A)) & DDI_A_4_LANES)
		return false;

	if (!dev_priv->vbt.int_crt_support)
		return false;

	return true;
}