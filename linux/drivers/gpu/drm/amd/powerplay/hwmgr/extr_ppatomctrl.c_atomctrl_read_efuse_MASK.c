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
typedef  void* uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_5__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_4__ {void* ucBitLength; void* ucBitShift; int /*<<< orphan*/  usEfuseIndex; } ;
struct TYPE_6__ {int /*<<< orphan*/  ulEfuseValue; TYPE_1__ sEfuse; } ;
typedef  TYPE_3__ READ_EFUSE_VALUE_PARAMETER ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReadEfuseValue ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct pp_hwmgr *hwmgr, uint16_t start_index,
		uint16_t end_index, uint32_t mask, uint32_t *efuse)
{
	struct amdgpu_device *adev = hwmgr->adev;
	int result;
	READ_EFUSE_VALUE_PARAMETER efuse_param;

	efuse_param.sEfuse.usEfuseIndex = FUNC2((start_index / 32) * 4);
	efuse_param.sEfuse.ucBitShift = (uint8_t)
			(start_index - ((start_index / 32) * 32));
	efuse_param.sEfuse.ucBitLength  = (uint8_t)
			((end_index - start_index) + 1);

	result = FUNC1(adev->mode_info.atom_context,
			FUNC0(COMMAND, ReadEfuseValue),
			(uint32_t *)&efuse_param);
	*efuse = result ? 0 : FUNC3(efuse_param.ulEfuseValue) & mask;

	return result;
}