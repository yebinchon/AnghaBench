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
typedef  scalar_t__ uint32_t ;
struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_COMM_CMD_REG ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG_BYTE0 ; 
 int /*<<< orphan*/  MASTER_COMM_CNTL_REG ; 
 int /*<<< orphan*/  MASTER_COMM_INTERRUPT ; 
 int PSR_ENABLE ; 
 int PSR_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct dce_dmcu* FUNC2 (struct dmcu*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmcu*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct dmcu *dmcu, bool enable, bool wait)
{
	struct dce_dmcu *dmcu_dce = FUNC2(dmcu);
	unsigned int dmcu_max_retry_on_wait_reg_ready = 801;
	unsigned int dmcu_wait_reg_ready_interval = 100;

	unsigned int retryCount;
	uint32_t psr_state = 0;

	/* waitDMCUReadyForCmd */
	FUNC1(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0,
				dmcu_wait_reg_ready_interval,
				dmcu_max_retry_on_wait_reg_ready);

	/* setDMCUParam_Cmd */
	if (enable)
		FUNC0(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0,
				PSR_ENABLE);
	else
		FUNC0(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0,
				PSR_EXIT);

	/* notifyDMCUMsg */
	FUNC0(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);
	if (wait == true) {
		for (retryCount = 0; retryCount <= 100; retryCount++) {
			FUNC3(dmcu, &psr_state);
			if (enable) {
				if (psr_state != 0)
					break;
			} else {
				if (psr_state == 0)
					break;
			}
			FUNC4(10);
		}
	}
}