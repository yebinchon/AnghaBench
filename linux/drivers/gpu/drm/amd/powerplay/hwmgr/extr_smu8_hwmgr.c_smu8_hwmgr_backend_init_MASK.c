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
struct smu8_hwmgr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hardwareActivityPerformanceLevels; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; struct smu8_hwmgr* backend; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SMU8_MAX_HARDWARE_POWERLEVELS ; 
 struct smu8_hwmgr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr)
{
	int result = 0;
	struct smu8_hwmgr *data;

	data = FUNC0(sizeof(struct smu8_hwmgr), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	hwmgr->backend = data;

	result = FUNC4(hwmgr);
	if (result != 0) {
		FUNC1("smu8_initialize_dpm_defaults failed\n");
		return result;
	}

	result = FUNC3(hwmgr);
	if (result != 0) {
		FUNC1("smu8_get_system_info_data failed\n");
		return result;
	}

	FUNC2(hwmgr);

	hwmgr->platform_descriptor.hardwareActivityPerformanceLevels =  SMU8_MAX_HARDWARE_POWERLEVELS;

	return result;
}