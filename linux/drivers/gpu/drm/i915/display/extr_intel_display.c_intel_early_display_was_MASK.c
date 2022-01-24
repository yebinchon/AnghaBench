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
 int /*<<< orphan*/  CHICKEN_PAR1_1 ; 
 int DARBF_GATING_DIS ; 
 int FORCE_ARB_IDLE_PLANES ; 
 int /*<<< orphan*/  GEN9_CLKGATE_DIS_0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	/* Display WA #1185 WaDisableDARBFClkGating:cnl,glk */
	if (FUNC2(dev_priv) || FUNC3(dev_priv))
		FUNC1(GEN9_CLKGATE_DIS_0, FUNC0(GEN9_CLKGATE_DIS_0) |
			   DARBF_GATING_DIS);

	if (FUNC4(dev_priv)) {
		/*
		 * WaRsPkgCStateDisplayPMReq:hsw
		 * System hang if this isn't done before disabling all planes!
		 */
		FUNC1(CHICKEN_PAR1_1,
			   FUNC0(CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
	}
}