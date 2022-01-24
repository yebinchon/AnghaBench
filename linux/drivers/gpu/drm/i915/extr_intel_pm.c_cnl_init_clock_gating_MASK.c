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
 int /*<<< orphan*/  CNL_REVID_A0 ; 
 int /*<<< orphan*/  CNL_REVID_B0 ; 
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int DISP_FBC_MEMORY_WAKE ; 
 int /*<<< orphan*/  GEN8_CHICKEN_DCPR_1 ; 
 int GWUNIT_CLKGATE_DIS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MASK_WAKEMEM ; 
 int RCCUNIT_CLKGATE_DIS ; 
 int SARBUNIT_CLKGATE_DIS ; 
 int /*<<< orphan*/  SLICE_UNIT_LEVEL_CLKGATE ; 
 int /*<<< orphan*/  SUBSLICE_UNIT_LEVEL_CLKGATE ; 
 int /*<<< orphan*/  UNSLICE_UNIT_LEVEL_CLKGATE ; 
 int VFUNIT_CLKGATE_DIS ; 
 int /*<<< orphan*/  _3D_CHICKEN3 ; 
 int /*<<< orphan*/  _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 val;
	FUNC4(dev_priv);

	/* This is not an Wa. Enable for better image quality */
	FUNC1(_3D_CHICKEN3,
		   FUNC3(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));

	/* WaEnableChickenDCPR:cnl */
	FUNC1(GEN8_CHICKEN_DCPR_1,
		   FUNC0(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

	/* WaFbcWakeMemOn:cnl */
	FUNC1(DISP_ARB_CTL, FUNC0(DISP_ARB_CTL) |
		   DISP_FBC_MEMORY_WAKE);

	val = FUNC0(SLICE_UNIT_LEVEL_CLKGATE);
	/* ReadHitWriteOnlyDisable:cnl */
	val |= RCCUNIT_CLKGATE_DIS;
	/* WaSarbUnitClockGatingDisable:cnl (pre-prod) */
	if (FUNC2(dev_priv, CNL_REVID_A0, CNL_REVID_B0))
		val |= SARBUNIT_CLKGATE_DIS;
	FUNC1(SLICE_UNIT_LEVEL_CLKGATE, val);

	/* Wa_2201832410:cnl */
	val = FUNC0(SUBSLICE_UNIT_LEVEL_CLKGATE);
	val |= GWUNIT_CLKGATE_DIS;
	FUNC1(SUBSLICE_UNIT_LEVEL_CLKGATE, val);

	/* WaDisableVFclkgate:cnl */
	/* WaVFUnitClockGatingDisable:cnl */
	val = FUNC0(UNSLICE_UNIT_LEVEL_CLKGATE);
	val |= VFUNIT_CLKGATE_DIS;
	FUNC1(UNSLICE_UNIT_LEVEL_CLKGATE, val);
}