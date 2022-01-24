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
 int /*<<< orphan*/  CM0_PIPELINED_RENDER_FLUSH_DISABLE ; 
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int DISP_FBC_WM_DIS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DISPLAY_CHICKEN1 ; 
 int /*<<< orphan*/  ILK_DISPLAY_CHICKEN2 ; 
 int ILK_DPARBUNIT_CLOCK_GATE_ENABLE ; 
 int ILK_DPARB_GATE ; 
 int ILK_DPFCRUNIT_CLOCK_GATE_DISABLE ; 
 int ILK_DPFCUNIT_CLOCK_GATE_DISABLE ; 
 int ILK_DPFDUNIT_CLOCK_GATE_ENABLE ; 
 int /*<<< orphan*/  ILK_DSPCLK_GATE_D ; 
 int ILK_ELPIN_409_SELECT ; 
 int ILK_FBCQ_DIS ; 
 int ILK_VRHUNIT_CLOCK_GATE_DISABLE ; 
 int ILK_VSDPFD_FULL ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int MARIUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  PCH_3DCGDIS0 ; 
 int /*<<< orphan*/  PCH_3DCGDIS1 ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int SVSMUNIT_CLOCK_GATE_DISABLE ; 
 int VFMUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  _3D_CHICKEN2 ; 
 int _3D_CHICKEN2_WM_READ_PIPELINED ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv)
{
	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;

	/*
	 * Required for FBC
	 * WaFbcDisableDpfcClockGating:ilk
	 */
	dspclk_gate |= ILK_DPFCRUNIT_CLOCK_GATE_DISABLE |
		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;

	FUNC1(PCH_3DCGDIS0,
		   MARIUNIT_CLOCK_GATE_DISABLE |
		   SVSMUNIT_CLOCK_GATE_DISABLE);
	FUNC1(PCH_3DCGDIS1,
		   VFMUNIT_CLOCK_GATE_DISABLE);

	/*
	 * According to the spec the following bits should be set in
	 * order to enable memory self-refresh
	 * The bit 22/21 of 0x42004
	 * The bit 5 of 0x42020
	 * The bit 15 of 0x45000
	 */
	FUNC1(ILK_DISPLAY_CHICKEN2,
		   (FUNC0(ILK_DISPLAY_CHICKEN2) |
		    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
	FUNC1(DISP_ARB_CTL,
		   (FUNC0(DISP_ARB_CTL) |
		    DISP_FBC_WM_DIS));

	/*
	 * Based on the document from hardware guys the following bits
	 * should be set unconditionally in order to enable FBC.
	 * The bit 22 of 0x42000
	 * The bit 22 of 0x42004
	 * The bit 7,8,9 of 0x42020.
	 */
	if (FUNC2(dev_priv)) {
		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
		FUNC1(ILK_DISPLAY_CHICKEN1,
			   FUNC0(ILK_DISPLAY_CHICKEN1) |
			   ILK_FBCQ_DIS);
		FUNC1(ILK_DISPLAY_CHICKEN2,
			   FUNC0(ILK_DISPLAY_CHICKEN2) |
			   ILK_DPARB_GATE);
	}

	FUNC1(ILK_DSPCLK_GATE_D, dspclk_gate);

	FUNC1(ILK_DISPLAY_CHICKEN2,
		   FUNC0(ILK_DISPLAY_CHICKEN2) |
		   ILK_ELPIN_409_SELECT);
	FUNC1(_3D_CHICKEN2,
		   _3D_CHICKEN2_WM_READ_PIPELINED << 16 |
		   _3D_CHICKEN2_WM_READ_PIPELINED);

	/* WaDisableRenderCachePipelinedFlush:ilk */
	FUNC1(CACHE_MODE_0,
		   FUNC4(CM0_PIPELINED_RENDER_FLUSH_DISABLE));

	/* WaDisable_RenderCache_OperationalFlush:ilk */
	FUNC1(CACHE_MODE_0, FUNC3(RC_OP_FLUSH_ENABLE));

	FUNC5(dev_priv);

	FUNC6(dev_priv);
}