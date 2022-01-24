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
 int GEN7_DOP_CLOCK_GATE_ENABLE ; 
 int /*<<< orphan*/  GEN7_MISCCPCTL ; 
 int /*<<< orphan*/  GEN8_L3SQCREG1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int L3_PRIO_CREDITS_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				   int general_prio_credits,
				   int high_prio_credits)
{
	u32 misccpctl;
	u32 val;

	/* WaTempDisableDOPClkGating:bdw */
	misccpctl = FUNC0(GEN7_MISCCPCTL);
	FUNC1(GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

	val = FUNC0(GEN8_L3SQCREG1);
	val &= ~L3_PRIO_CREDITS_MASK;
	val |= FUNC2(general_prio_credits);
	val |= FUNC3(high_prio_credits);
	FUNC1(GEN8_L3SQCREG1, val);

	/*
	 * Wait at least 100 clocks before re-enabling clock gating.
	 * See the definition of L3SQCREG1 in BSpec.
	 */
	FUNC4(GEN8_L3SQCREG1);
	FUNC5(1);
	FUNC1(GEN7_MISCCPCTL, misccpctl);
}