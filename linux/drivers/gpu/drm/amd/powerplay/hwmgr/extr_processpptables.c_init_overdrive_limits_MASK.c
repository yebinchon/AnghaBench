#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {scalar_t__ memoryClock; scalar_t__ engineClock; } ;
struct TYPE_6__ {scalar_t__ overdriveVDDCStep; scalar_t__ maxOverdriveVDDC; scalar_t__ minOverdriveVDDC; TYPE_1__ overdriveLimit; } ;
struct pp_hwmgr {scalar_t__ chip_id; int /*<<< orphan*/  adev; TYPE_2__ platform_descriptor; } ;
struct TYPE_7__ {int ucTableFormatRevision; int /*<<< orphan*/  usStructureSize; } ;
typedef  int /*<<< orphan*/  ATOM_PPLIB_POWERPLAYTABLE ;
typedef  int /*<<< orphan*/  ATOM_FIRMWARE_INFO_V2_1 ;
typedef  int /*<<< orphan*/  ATOM_FIRMWARE_INFO_V1_4 ;
typedef  TYPE_3__ ATOM_COMMON_TABLE_HEADER ;

/* Variables and functions */
 scalar_t__ CHIP_RAVEN ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FirmwareInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr,
			const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
	int result = 0;
	uint8_t frev, crev;
	uint16_t size;

	const ATOM_COMMON_TABLE_HEADER *fw_info = NULL;

	hwmgr->platform_descriptor.overdriveLimit.engineClock = 0;
	hwmgr->platform_descriptor.overdriveLimit.memoryClock = 0;
	hwmgr->platform_descriptor.minOverdriveVDDC = 0;
	hwmgr->platform_descriptor.maxOverdriveVDDC = 0;
	hwmgr->platform_descriptor.overdriveVDDCStep = 0;

	if (hwmgr->chip_id == CHIP_RAVEN)
		return 0;

	/* We assume here that fw_info is unchanged if this call fails.*/
	fw_info = FUNC4(hwmgr->adev,
			 FUNC0(DATA, FirmwareInfo),
			 &size, &frev, &crev);

	if ((fw_info->ucTableFormatRevision == 1)
	    && (FUNC3(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V1_4)))
		result = FUNC1(hwmgr,
				powerplay_table,
				(const ATOM_FIRMWARE_INFO_V1_4 *)fw_info);

	else if ((fw_info->ucTableFormatRevision == 2)
		 && (FUNC3(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V2_1)))
		result = FUNC2(hwmgr,
				powerplay_table,
				(const ATOM_FIRMWARE_INFO_V2_1 *)fw_info);

	return result;
}