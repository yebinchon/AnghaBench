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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int /*<<< orphan*/  DEUC ; 
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int /*<<< orphan*/  I965_RCC_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ; 
 int /*<<< orphan*/  MI_ARB_STATE ; 
 int /*<<< orphan*/  RAMCLK_GATE_D ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int /*<<< orphan*/  RENCLK_GATE_D1 ; 
 int /*<<< orphan*/  RENCLK_GATE_D2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;

	FUNC2(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
	FUNC2(uncore, RENCLK_GATE_D2, 0);
	FUNC2(uncore, DSPCLK_GATE_D, 0);
	FUNC2(uncore, RAMCLK_GATE_D, 0);
	FUNC3(uncore, DEUC, 0);
	FUNC2(uncore,
			   MI_ARB_STATE,
			   FUNC1(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));

	/* WaDisable_RenderCache_OperationalFlush:gen4 */
	FUNC2(uncore,
			   CACHE_MODE_0,
			   FUNC0(RC_OP_FLUSH_ENABLE));
}