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
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_BSP_DFLT ; 
 int /*<<< orphan*/  R600_BSU_DFLT ; 
 int /*<<< orphan*/  R600_CTXCGTT3DRPHC_DFLT ; 
 int /*<<< orphan*/  R600_CTXCGTT3DRSDC_DFLT ; 
 int /*<<< orphan*/  R600_DISPLAY_WATERMARK_HIGH ; 
 int /*<<< orphan*/  R600_FCTU_DFLT ; 
 int /*<<< orphan*/  R600_FCT_DFLT ; 
 int /*<<< orphan*/  R600_GICST_DFLT ; 
 int R600_PM_NUMBER_OF_TC ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_CTXSW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  R600_SPLLSTEPUNIT_DFLT ; 
 int /*<<< orphan*/  R600_SSTU_DFLT ; 
 int /*<<< orphan*/  R600_SST_DFLT ; 
 int /*<<< orphan*/  R600_TD_DFLT ; 
 int /*<<< orphan*/  R600_TPC_DFLT ; 
 int /*<<< orphan*/  R600_TPU_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORPHC_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORSDC_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORSU_DFLT ; 
 int /*<<< orphan*/  R600_VOLTAGERESPONSETIME_DFLT ; 
 int /*<<< orphan*/  R600_VRU_DFLT ; 
 int /*<<< orphan*/  RS780_CGFTV_DFLT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct radeon_device*,struct radeon_ps*) ; 

__attribute__((used)) static int FUNC27(struct radeon_device *rdev,
					   struct radeon_ps *boot_ps)
{
	int ret = 0;
	int i;

	FUNC8(rdev, R600_BSU_DFLT, R600_BSP_DFLT);

	FUNC7(rdev, 0, 0, 0, 0);

	FUNC13(rdev, R600_GICST_DFLT);

	for (i = 0; i < R600_PM_NUMBER_OF_TC; i++)
		FUNC16(rdev, i, 0, 0);

	FUNC6(rdev, R600_TD_DFLT);
	FUNC22(rdev, 0);

	FUNC18(rdev, R600_TPU_DFLT);
	FUNC17(rdev, R600_TPC_DFLT);

	FUNC15(rdev, R600_SSTU_DFLT);
	FUNC14(rdev, R600_SST_DFLT);

	FUNC12(rdev, R600_FCTU_DFLT);
	FUNC11(rdev, R600_FCT_DFLT);

	FUNC21(rdev, R600_VDDC3DOORSU_DFLT);
	FUNC19(rdev, R600_VDDC3DOORPHC_DFLT);
	FUNC20(rdev, R600_VDDC3DOORSDC_DFLT);
	FUNC9(rdev, R600_CTXCGTT3DRPHC_DFLT);
	FUNC10(rdev, R600_CTXCGTT3DRSDC_DFLT);

	FUNC25(rdev, R600_VRU_DFLT);
	FUNC24(rdev, R600_VOLTAGERESPONSETIME_DFLT);
	FUNC23(rdev, R600_SPLLSTEPUNIT_DFLT);

	ret = FUNC26(rdev, boot_ps);

	FUNC4(rdev, R600_POWER_LEVEL_LOW,     0);
	FUNC4(rdev, R600_POWER_LEVEL_MEDIUM,  0);
	FUNC4(rdev, R600_POWER_LEVEL_HIGH,    0);

	FUNC3(rdev, R600_POWER_LEVEL_LOW,    0);
	FUNC3(rdev, R600_POWER_LEVEL_MEDIUM, 0);
	FUNC3(rdev, R600_POWER_LEVEL_HIGH,   0);

	FUNC1(rdev, R600_POWER_LEVEL_LOW,    0);
	FUNC1(rdev, R600_POWER_LEVEL_MEDIUM, 0);
	FUNC1(rdev, R600_POWER_LEVEL_HIGH,   0);

	FUNC5(rdev, R600_POWER_LEVEL_LOW,    R600_DISPLAY_WATERMARK_HIGH);
	FUNC5(rdev, R600_POWER_LEVEL_MEDIUM, R600_DISPLAY_WATERMARK_HIGH);
	FUNC5(rdev, R600_POWER_LEVEL_HIGH,   R600_DISPLAY_WATERMARK_HIGH);

	FUNC0(rdev, R600_POWER_LEVEL_CTXSW, false);
	FUNC0(rdev, R600_POWER_LEVEL_HIGH, false);
	FUNC0(rdev, R600_POWER_LEVEL_MEDIUM, false);
	FUNC0(rdev, R600_POWER_LEVEL_LOW, true);

	FUNC2(rdev, R600_POWER_LEVEL_LOW);

	FUNC22(rdev, RS780_CGFTV_DFLT);

	return ret;
}