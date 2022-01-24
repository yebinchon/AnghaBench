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
typedef  int /*<<< orphan*/  uint16_t ;
struct smu7_hwmgr {int power_containment_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_PowerContainment ; 
 int POWERCONTAINMENT_FEATURE_DTE ; 
 int POWERCONTAINMENT_FEATURE_PkgPwrLimit ; 
 int POWERCONTAINMENT_FEATURE_TDCLimit ; 
 scalar_t__ PPSMC_MSG_DisableDTE ; 
 scalar_t__ PPSMC_MSG_PkgPwrLimitDisable ; 
 scalar_t__ PPSMC_MSG_TDCLimitDisable ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
	int result = 0;

	if (FUNC1(PHM_PlatformCaps_PowerContainment) &&
	    data->power_containment_features) {
		int smc_result;

		if (data->power_containment_features &
				POWERCONTAINMENT_FEATURE_TDCLimit) {
			smc_result = FUNC2(hwmgr,
					(uint16_t)(PPSMC_MSG_TDCLimitDisable));
			FUNC0((smc_result == 0),
					"Failed to disable TDCLimit in SMC.",
					result = smc_result);
		}

		if (data->power_containment_features &
				POWERCONTAINMENT_FEATURE_DTE) {
			smc_result = FUNC2(hwmgr,
					(uint16_t)(PPSMC_MSG_DisableDTE));
			FUNC0((smc_result == 0),
					"Failed to disable DTE in SMC.",
					result = smc_result);
		}

		if (data->power_containment_features &
				POWERCONTAINMENT_FEATURE_PkgPwrLimit) {
			smc_result = FUNC2(hwmgr,
					(uint16_t)(PPSMC_MSG_PkgPwrLimitDisable));
			FUNC0((smc_result == 0),
					"Failed to disable PkgPwrTracking in SMC.",
					result = smc_result);
		}
		data->power_containment_features = 0;
	}

	return result;
}