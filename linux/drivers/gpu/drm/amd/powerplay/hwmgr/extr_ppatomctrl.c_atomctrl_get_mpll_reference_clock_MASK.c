#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pp_hwmgr {int /*<<< orphan*/  adev; } ;
struct TYPE_6__ {int ucTableFormatRevision; int /*<<< orphan*/  usStructureSize; } ;
struct TYPE_5__ {int /*<<< orphan*/  usReferenceClock; } ;
struct TYPE_4__ {int /*<<< orphan*/  usMemoryReferenceClock; } ;
typedef  TYPE_1__ ATOM_FIRMWARE_INFO_V2_1 ;
typedef  TYPE_2__ ATOM_FIRMWARE_INFO ;
typedef  TYPE_3__ ATOM_COMMON_TABLE_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FirmwareInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uint32_t FUNC3(struct pp_hwmgr *hwmgr)
{
	ATOM_COMMON_TABLE_HEADER *fw_info;
	uint32_t clock;
	u8 frev, crev;
	u16 size;

	fw_info = (ATOM_COMMON_TABLE_HEADER *)
		FUNC2(hwmgr->adev,
				FUNC0(DATA, FirmwareInfo),
				&size, &frev, &crev);

	if (fw_info == NULL)
		clock = 2700;
	else {
		if ((fw_info->ucTableFormatRevision == 2) &&
			(FUNC1(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V2_1))) {
			ATOM_FIRMWARE_INFO_V2_1 *fwInfo_2_1 =
				(ATOM_FIRMWARE_INFO_V2_1 *)fw_info;
			clock = (uint32_t)(FUNC1(fwInfo_2_1->usMemoryReferenceClock));
		} else {
			ATOM_FIRMWARE_INFO *fwInfo_0_0 =
				(ATOM_FIRMWARE_INFO *)fw_info;
			clock = (uint32_t)(FUNC1(fwInfo_0_0->usReferenceClock));
		}
	}

	return clock;
}