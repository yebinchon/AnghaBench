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
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int CL_UNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  CM0_PIPELINED_RENDER_FLUSH_DISABLE ; 
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int DSSUNIT_CLOCK_GATE_DISABLE ; 
 int GS_UNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int OVCUNIT_CLOCK_GATE_DISABLE ; 
 int OVRUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  RAMCLK_GATE_D ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int /*<<< orphan*/  RENCLK_GATE_D1 ; 
 int /*<<< orphan*/  RENCLK_GATE_D2 ; 
 int VF_UNIT_CLOCK_GATE_DISABLE ; 
 int VRHUNIT_CLOCK_GATE_DISABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 dspclk_gate;

	FUNC0(RENCLK_GATE_D1, 0);
	FUNC0(RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
		   GS_UNIT_CLOCK_GATE_DISABLE |
		   CL_UNIT_CLOCK_GATE_DISABLE);
	FUNC0(RAMCLK_GATE_D, 0);
	dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
		OVRUNIT_CLOCK_GATE_DISABLE |
		OVCUNIT_CLOCK_GATE_DISABLE;
	if (FUNC1(dev_priv))
		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
	FUNC0(DSPCLK_GATE_D, dspclk_gate);

	/* WaDisableRenderCachePipelinedFlush */
	FUNC0(CACHE_MODE_0,
		   FUNC3(CM0_PIPELINED_RENDER_FLUSH_DISABLE));

	/* WaDisable_RenderCache_OperationalFlush:g4x */
	FUNC0(CACHE_MODE_0, FUNC2(RC_OP_FLUSH_ENABLE));

	FUNC4(dev_priv);
}