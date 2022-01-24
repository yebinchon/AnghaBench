#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {int /*<<< orphan*/  device; TYPE_1__ platform_descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  CG_SPLL_SPREAD_SPECTRUM ; 
 int /*<<< orphan*/  DYN_SPREAD_SPECTRUM_EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ThermalController ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  SSEN ; 
 int /*<<< orphan*/  THERMAL_PROTECTION_DIS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pp_hwmgr*,int) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 
 int FUNC8 (struct pp_hwmgr*) ; 
 int FUNC9 (struct pp_hwmgr*) ; 
 int FUNC10 (struct pp_hwmgr*) ; 
 int FUNC11 (struct pp_hwmgr*) ; 
 int FUNC12 (struct pp_hwmgr*) ; 
 int FUNC13 (struct pp_hwmgr*) ; 

int FUNC14(struct pp_hwmgr *hwmgr)
{
	int tmp_result, result = 0;

	if (FUNC2(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_ThermalController))
		FUNC0(hwmgr->device, CGS_IND_REG__SMC,
				GENERAL_PWRMGT, THERMAL_PROTECTION_DIS, 1);

	tmp_result = FUNC7(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable power containment!", result = tmp_result);

	tmp_result = FUNC8(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable SMC CAC!", result = tmp_result);

	tmp_result = FUNC6(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable DIDT!", result = tmp_result);

	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			CG_SPLL_SPREAD_SPECTRUM, SSEN, 0);
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			GENERAL_PWRMGT, DYN_SPREAD_SPECTRUM_EN, 0);

	tmp_result = FUNC9(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable thermal auto throttle!", result = tmp_result);

	tmp_result = FUNC3(hwmgr, false);
	FUNC1((tmp_result == 0),
			"Failed to disable AVFS!", result = tmp_result);

	tmp_result = FUNC13(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to stop DPM!", result = tmp_result);

	tmp_result = FUNC5(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable deep sleep master switch!", result = tmp_result);

	tmp_result = FUNC10(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to disable ULV!", result = tmp_result);

	tmp_result = FUNC4(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to clear voting clients!", result = tmp_result);

	tmp_result = FUNC12(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to reset to default!", result = tmp_result);

	tmp_result = FUNC11(hwmgr);
	FUNC1((tmp_result == 0),
			"Failed to force to switch arbf0!", result = tmp_result);

	return result;
}