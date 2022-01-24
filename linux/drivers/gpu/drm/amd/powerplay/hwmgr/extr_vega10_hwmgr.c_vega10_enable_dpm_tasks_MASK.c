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
struct vega10_hwmgr {int /*<<< orphan*/  config_telemetry; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_ThermalController ; 
 int /*<<< orphan*/  PPSMC_MSG_ConfigureTelemetry ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_DPM_FEATURES ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*,int) ; 
 int FUNC8 (struct pp_hwmgr*) ; 
 int FUNC9 (struct pp_hwmgr*) ; 
 int FUNC10 (struct pp_hwmgr*) ; 
 int FUNC11 (struct pp_hwmgr*) ; 
 int FUNC12 (struct pp_hwmgr*) ; 
 int FUNC13 (struct pp_hwmgr*) ; 
 int FUNC14 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;
	int tmp_result, result = 0;

	FUNC7(hwmgr, true);

	FUNC3(hwmgr,
		PPSMC_MSG_ConfigureTelemetry, data->config_telemetry);

	tmp_result = FUNC4(hwmgr);
	FUNC1(!tmp_result,
			"Failed to construct voltage tables!",
			result = tmp_result);

	tmp_result = FUNC12(hwmgr);
	FUNC1(!tmp_result,
			"Failed to initialize SMC table!",
			result = tmp_result);

	if (FUNC2(PHM_PlatformCaps_ThermalController)) {
		tmp_result = FUNC9(hwmgr);
		FUNC1(!tmp_result,
				"Failed to enable thermal protection!",
				result = tmp_result);
	}

	tmp_result = FUNC11(hwmgr);
	FUNC1(!tmp_result,
			"Failed to enable VR hot feature!",
			result = tmp_result);

	tmp_result = FUNC5(hwmgr);
	FUNC1(!tmp_result,
			"Failed to enable deep sleep master switch!",
			result = tmp_result);

	tmp_result = FUNC14(hwmgr, SMC_DPM_FEATURES);
	FUNC1(!tmp_result,
			"Failed to start DPM!", result = tmp_result);

	/* enable didt, do not abort if failed didt */
	tmp_result = FUNC6(hwmgr);
	FUNC0(!tmp_result,
			"Failed to enable didt config!");

	tmp_result = FUNC8(hwmgr);
	FUNC1(!tmp_result,
			"Failed to enable power containment!",
			result = tmp_result);

	tmp_result = FUNC13(hwmgr);
	FUNC1(!tmp_result,
			"Failed to power control set level!",
			result = tmp_result);

	tmp_result = FUNC10(hwmgr);
	FUNC1(!tmp_result,
			"Failed to enable ULV!",
			result = tmp_result);

	return result;
}