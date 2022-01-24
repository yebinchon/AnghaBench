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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ smu_backend; } ;
struct ci_smumgr {int /*<<< orphan*/  power_tune_table; } ;
struct SMU7_Discrete_PmFuses {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerContainment ; 
 int /*<<< orphan*/  PmFuseTable ; 
 int /*<<< orphan*/  SMC_RAM_END ; 
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ; 
 int /*<<< orphan*/  SMU7_Firmware_Header ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 
 int FUNC8 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC9 (struct pp_hwmgr*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct pp_hwmgr *hwmgr)
{
	struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
	uint32_t pm_fuse_table_offset;
	int ret = 0;

	if (FUNC11(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_PowerContainment)) {
		if (FUNC9(hwmgr,
				SMU7_FIRMWARE_HEADER_LOCATION +
				FUNC10(SMU7_Firmware_Header, PmFuseTable),
				&pm_fuse_table_offset, SMC_RAM_END)) {
			FUNC12("Attempt to get pm_fuse_table_offset Failed!\n");
			return -EINVAL;
		}

		/* DW0 - DW3 */
		ret = FUNC3(hwmgr);
		/* DW4 - DW5 */
		ret |= FUNC8(hwmgr);
		/* DW6 */
		ret |= FUNC6(hwmgr);
		/* DW7 */
		ret |= FUNC7(hwmgr);
		/* DW8 */
		ret |= FUNC4(hwmgr, pm_fuse_table_offset);

		ret |= FUNC5(hwmgr, pm_fuse_table_offset);

		ret |= FUNC1(hwmgr);

		ret |= FUNC2(hwmgr);
		if (ret)
			return ret;

		ret = FUNC0(hwmgr, pm_fuse_table_offset,
				(uint8_t *)&smu_data->power_tune_table,
				sizeof(struct SMU7_Discrete_PmFuses), SMC_RAM_END);
	}
	return ret;
}