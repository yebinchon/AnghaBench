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
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int DISP_FBC_MEMORY_WAKE ; 
 int DISP_FBC_WM_DIS ; 
 int GEN7_DOP_CLOCK_GATE_ENABLE ; 
 int /*<<< orphan*/  GEN7_MISCCPCTL ; 
 int /*<<< orphan*/  GEN8_CHICKEN_DCPR_1 ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DPFC_CHICKEN ; 
 int ILK_DPFC_DISABLE_DUMMY0 ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int MASK_WAKEMEM ; 
 int SKL_DE_COMPRESSED_HASH_MODE ; 
 int SKL_EDP_PSR_FIX_RDWRAP ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv)) {
		/*
		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
		 * Display WA #0390: skl,kbl
		 *
		 * Must match Sampler, Pixel Back End, and Media. See
		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
		 */
		FUNC2(CHICKEN_PAR1_1,
			   FUNC1(CHICKEN_PAR1_1) |
			   SKL_DE_COMPRESSED_HASH_MODE);
	}

	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
	FUNC2(CHICKEN_PAR1_1,
		   FUNC1(CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);

	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
	FUNC2(GEN8_CHICKEN_DCPR_1,
		   FUNC1(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

	/* WaFbcTurnOffFbcWatermark:skl,bxt,kbl,cfl */
	/* WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl */
	FUNC2(DISP_ARB_CTL, FUNC1(DISP_ARB_CTL) |
		   DISP_FBC_WM_DIS |
		   DISP_FBC_MEMORY_WAKE);

	/* WaFbcHighMemBwCorruptionAvoidance:skl,bxt,kbl,cfl */
	FUNC2(ILK_DPFC_CHICKEN, FUNC1(ILK_DPFC_CHICKEN) |
		   ILK_DPFC_DISABLE_DUMMY0);

	if (FUNC3(dev_priv)) {
		/* WaDisableDopClockGating */
		FUNC2(GEN7_MISCCPCTL, FUNC1(GEN7_MISCCPCTL)
			   & ~GEN7_DOP_CLOCK_GATE_ENABLE);
	}
}