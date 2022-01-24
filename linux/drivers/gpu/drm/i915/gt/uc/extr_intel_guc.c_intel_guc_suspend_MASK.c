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
typedef  scalar_t__ u32 ;
struct intel_uncore {int dummy; } ;
struct intel_guc {int dummy; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int EIO ; 
 scalar_t__ GUC_POWER_D1 ; 
 scalar_t__ INTEL_GUC_ACTION_ENTER_S_STATE ; 
 int /*<<< orphan*/  INTEL_GUC_SLEEP_STATE_INVALID_MASK ; 
 scalar_t__ INTEL_GUC_SLEEP_STATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 TYPE_1__* FUNC4 (struct intel_guc*) ; 
 int FUNC5 (struct intel_guc*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct intel_guc *guc)
{
	struct intel_uncore *uncore = FUNC4(guc)->uncore;
	int ret;
	u32 status;
	u32 action[] = {
		INTEL_GUC_ACTION_ENTER_S_STATE,
		GUC_POWER_D1, /* any value greater than GUC_POWER_D0 */
	};

	/*
	 * The ENTER_S_STATE action queues the save/restore operation in GuC FW
	 * and then returns, so waiting on the H2G is not enough to guarantee
	 * GuC is done. When all the processing is done, GuC writes
	 * INTEL_GUC_SLEEP_STATE_SUCCESS to scratch register 14, so we can poll
	 * on that. Note that GuC does not ensure that the value in the register
	 * is different from INTEL_GUC_SLEEP_STATE_SUCCESS while the action is
	 * in progress so we need to take care of that ourselves as well.
	 */

	FUNC6(uncore, FUNC2(14),
			   INTEL_GUC_SLEEP_STATE_INVALID_MASK);

	ret = FUNC5(guc, action, FUNC0(action));
	if (ret)
		return ret;

	ret = FUNC3(uncore, FUNC2(14),
					INTEL_GUC_SLEEP_STATE_INVALID_MASK,
					0, 0, 10, &status);
	if (ret)
		return ret;

	if (status != INTEL_GUC_SLEEP_STATE_SUCCESS) {
		FUNC1("GuC failed to change sleep state. "
			  "action=0x%x, err=%u\n",
			  action[0], status);
		return -EIO;
	}

	return 0;
}