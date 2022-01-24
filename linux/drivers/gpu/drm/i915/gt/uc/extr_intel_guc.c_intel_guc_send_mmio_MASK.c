#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int count; int /*<<< orphan*/  fw_domains; } ;
struct intel_guc {int /*<<< orphan*/  send_mutex; TYPE_1__ send_regs; } ;
struct TYPE_4__ {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int const,int,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int const INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER ; 
 int const INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER ; 
 int const INTEL_GUC_MSG_CODE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  INTEL_GUC_MSG_TYPE_MASK ; 
 int INTEL_GUC_MSG_TYPE_RESPONSE ; 
 int INTEL_GUC_MSG_TYPE_SHIFT ; 
 int FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc*,int) ; 
 TYPE_2__* FUNC6 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uncore*,int /*<<< orphan*/ ,int const) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct intel_guc *guc, const u32 *action, u32 len,
			u32 *response_buf, u32 response_buf_size)
{
	struct intel_uncore *uncore = FUNC6(guc)->uncore;
	u32 status;
	int i;
	int ret;

	FUNC1(!len);
	FUNC1(len > guc->send_regs.count);

	/* We expect only action code */
	FUNC1(*action & ~INTEL_GUC_MSG_CODE_MASK);

	/* If CT is available, we expect to use MMIO only during init/fini */
	FUNC1(*action != INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER &&
		   *action != INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER);

	FUNC14(&guc->send_mutex);
	FUNC8(uncore, guc->send_regs.fw_domains);

	for (i = 0; i < len; i++)
		FUNC12(uncore, FUNC5(guc, i), action[i]);

	FUNC10(uncore, FUNC5(guc, i - 1));

	FUNC7(guc);

	/*
	 * No GuC command should ever take longer than 10ms.
	 * Fast commands should still complete in 10us.
	 */
	ret = FUNC4(uncore,
					   FUNC5(guc, 0),
					   INTEL_GUC_MSG_TYPE_MASK,
					   INTEL_GUC_MSG_TYPE_RESPONSE <<
					   INTEL_GUC_MSG_TYPE_SHIFT,
					   10, 10, &status);
	/* If GuC explicitly returned an error, convert it to -EIO */
	if (!ret && !FUNC2(status))
		ret = -EIO;

	if (ret) {
		FUNC0("MMIO: GuC action %#x failed with error %d %#x\n",
			  action[0], ret, status);
		goto out;
	}

	if (response_buf) {
		int count = FUNC13(response_buf_size, guc->send_regs.count - 1);

		for (i = 0; i < count; i++)
			response_buf[i] = FUNC11(uncore,
							    FUNC5(guc, i + 1));
	}

	/* Use data from the GuC response as our return value */
	ret = FUNC3(status);

out:
	FUNC9(uncore, guc->send_regs.fw_domains);
	FUNC15(&guc->send_mutex);

	return ret;
}