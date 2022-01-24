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
typedef  enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BACO_STATE_IN ; 
 int BACO_STATE_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_EnterBaco ; 
 int /*<<< orphan*/  clean_baco_tbl ; 
 int /*<<< orphan*/  enter_baco_tbl ; 
 int /*<<< orphan*/  exit_baco_tbl ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pre_baco_tbl ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int*) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct pp_hwmgr *hwmgr, enum BACO_STATE state)
{
	enum BACO_STATE cur_state;

	FUNC2(hwmgr, &cur_state);

	if (cur_state == state)
		/* aisc already in the target state */
		return 0;

	if (state == BACO_STATE_IN) {
		if (FUNC4(hwmgr, pre_baco_tbl,
					     FUNC0(pre_baco_tbl))) {
			if (FUNC3(hwmgr, PPSMC_MSG_EnterBaco))
				return -EINVAL;

			if (FUNC4(hwmgr, enter_baco_tbl,
						   FUNC0(enter_baco_tbl)))
				return 0;
		}
	} else if (state == BACO_STATE_OUT) {
		/* HW requires at least 20ms between regulator off and on */
		FUNC1(20);
		/* Execute Hardware BACO exit sequence */
		if (FUNC4(hwmgr, exit_baco_tbl,
					     FUNC0(exit_baco_tbl))) {
			if (FUNC4(hwmgr, clean_baco_tbl,
						     FUNC0(clean_baco_tbl)))
				return 0;
		}
	}

	return -EINVAL;
}