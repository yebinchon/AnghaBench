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
 int /*<<< orphan*/  DC_STATE_EN_UPTO_DC6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GEN8_CHICKEN_DCPR_1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int SKL_SELECT_ALTERNATE_DC_EXIT ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	FUNC4(dev_priv);

	FUNC0("Enabling DC6\n");

	/* Wa Display #1183: skl,kbl,cfl */
	if (FUNC3(dev_priv))
		FUNC2(GEN8_CHICKEN_DCPR_1, FUNC1(GEN8_CHICKEN_DCPR_1) |
			   SKL_SELECT_ALTERNATE_DC_EXIT);

	FUNC5(dev_priv, DC_STATE_EN_UPTO_DC6);
}