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
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_ThermalController ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_DPM_FEATURES ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*,int) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 
 int FUNC8 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC9 (struct pp_hwmgr*,int) ; 
 int FUNC10 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct pp_hwmgr *hwmgr)
{
	int tmp_result, result = 0;

	if (FUNC1(PHM_PlatformCaps_ThermalController))
		FUNC7(hwmgr);

	tmp_result = FUNC6(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable power containment!", result = tmp_result);

	tmp_result = FUNC5(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable didt config!", result = tmp_result);

	tmp_result = FUNC3(hwmgr, false);
	FUNC0((tmp_result == 0),
			"Failed to disable AVFS!", result = tmp_result);

	tmp_result = FUNC10(hwmgr, SMC_DPM_FEATURES);
	FUNC0((tmp_result == 0),
			"Failed to stop DPM!", result = tmp_result);

	tmp_result = FUNC4(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable deep sleep!", result = tmp_result);

	tmp_result = FUNC8(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable ulv!", result = tmp_result);

	tmp_result =  FUNC2(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable acg!", result = tmp_result);

	FUNC9(hwmgr, false);
	return result;
}