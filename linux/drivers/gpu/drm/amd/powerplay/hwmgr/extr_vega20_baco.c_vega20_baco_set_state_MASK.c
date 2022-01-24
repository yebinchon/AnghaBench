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
typedef  int uint32_t ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BACO_STATE_IN ; 
 int BACO_STATE_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_EnterBaco ; 
 int /*<<< orphan*/  PPSMC_MSG_ExitBaco ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  clean_baco_tbl ; 
 int /*<<< orphan*/  mmTHM_BACO_CNTL ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,int*) ; 

int FUNC7(struct pp_hwmgr *hwmgr, enum BACO_STATE state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
	enum BACO_STATE cur_state;
	uint32_t data;

	FUNC6(hwmgr, &cur_state);

	if (cur_state == state)
		/* aisc already in the target state */
		return 0;

	if (state == BACO_STATE_IN) {
		data = FUNC1(THM, 0, mmTHM_BACO_CNTL);
		data |= 0x80000000;
		FUNC2(THM, 0, mmTHM_BACO_CNTL, data);


		if(FUNC4(hwmgr, PPSMC_MSG_EnterBaco, 0))
			return -EINVAL;

	} else if (state == BACO_STATE_OUT) {
		if (FUNC3(hwmgr, PPSMC_MSG_ExitBaco))
			return -EINVAL;
		if (!FUNC5(hwmgr, clean_baco_tbl,
						     FUNC0(clean_baco_tbl)))
			return -EINVAL;
	}

	return 0;
}