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
 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_RC_SLEEP_PSMI_CONTROL ; 
 int /*<<< orphan*/  GEN6_UCGCTL1 ; 
 int /*<<< orphan*/  GEN7_FF_THREAD_MODE ; 
 int GEN7_FF_VS_REF_CNT_FFME ; 
 int GEN8_FF_DS_REF_CNT_FFME ; 
 int /*<<< orphan*/  GEN8_RC_SEMA_IDLE_MSG_DISABLE ; 
 int GEN8_SDEUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN8_UCGCTL6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	/* WaVSRefCountFullforceMissDisable:chv */
	/* WaDSRefCountFullforceMissDisable:chv */
	FUNC1(GEN7_FF_THREAD_MODE,
		   FUNC0(GEN7_FF_THREAD_MODE) &
		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));

	/* WaDisableSemaphoreAndSyncFlipWait:chv */
	FUNC1(GEN6_RC_SLEEP_PSMI_CONTROL,
		   FUNC2(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

	/* WaDisableCSUnitClockGating:chv */
	FUNC1(GEN6_UCGCTL1, FUNC0(GEN6_UCGCTL1) |
		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);

	/* WaDisableSDEUnitClockGating:chv */
	FUNC1(GEN8_UCGCTL6, FUNC0(GEN8_UCGCTL6) |
		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);

	/*
	 * WaProgramL3SqcReg1Default:chv
	 * See gfxspecs/Related Documents/Performance Guide/
	 * LSQC Setting Recommendations.
	 */
	FUNC3(dev_priv, 38, 2);
}