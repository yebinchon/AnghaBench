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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int DSTATE_DOT_CLOCK_GATING ; 
 int DSTATE_GFX_CLOCK_GATING ; 
 int DSTATE_PLL_D3_OFF ; 
 int /*<<< orphan*/  D_STATE ; 
 int /*<<< orphan*/  ECOSKPD ; 
 int /*<<< orphan*/  ECO_FLIP_DONE ; 
 int /*<<< orphan*/  ECO_GATING_CX_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INSTPM ; 
 int /*<<< orphan*/  INSTPM_AGPBUSY_INT_EN ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MI_ARB_C3_LP_WRITE_ENABLE ; 
 int /*<<< orphan*/  MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ; 
 int /*<<< orphan*/  MI_ARB_STATE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 dstate = FUNC0(D_STATE);

	dstate |= DSTATE_PLL_D3_OFF | DSTATE_GFX_CLOCK_GATING |
		DSTATE_DOT_CLOCK_GATING;
	FUNC1(D_STATE, dstate);

	if (FUNC2(dev_priv))
		FUNC1(ECOSKPD, FUNC4(ECO_GATING_CX_ONLY));

	/* IIR "flip pending" means done if this bit is set */
	FUNC1(ECOSKPD, FUNC3(ECO_FLIP_DONE));

	/* interrupts should cause a wake up from C3 */
	FUNC1(INSTPM, FUNC4(INSTPM_AGPBUSY_INT_EN));

	/* On GEN3 we really need to make sure the ARB C3 LP bit is set */
	FUNC1(MI_ARB_STATE, FUNC4(MI_ARB_C3_LP_WRITE_ENABLE));

	FUNC1(MI_ARB_STATE,
		   FUNC4(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
}