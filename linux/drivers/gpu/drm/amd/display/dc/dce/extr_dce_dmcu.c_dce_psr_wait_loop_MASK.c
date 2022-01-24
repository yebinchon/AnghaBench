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
struct TYPE_2__ {unsigned int wait_loop; } ;
union dce_dmcu_psr_config_data_wait_loop_reg1 {scalar_t__ u32; TYPE_1__ bits; } ;
struct dmcu {unsigned int cached_wait_loop_number; int /*<<< orphan*/  ctx; } ;
struct dce_dmcu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_COMM_CMD_REG ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG_BYTE0 ; 
 int /*<<< orphan*/  MASTER_COMM_CNTL_REG ; 
 int /*<<< orphan*/  MASTER_COMM_DATA_REG1 ; 
 int /*<<< orphan*/  MASTER_COMM_INTERRUPT ; 
 int PSR_SET_WAITLOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct dce_dmcu* FUNC3 (struct dmcu*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmcu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(
	struct dmcu *dmcu,
	unsigned int wait_loop_number)
{
	struct dce_dmcu *dmcu_dce = FUNC3(dmcu);
	union dce_dmcu_psr_config_data_wait_loop_reg1 masterCmdData1;

	if (dmcu->cached_wait_loop_number == wait_loop_number)
		return;

	/* DMCU is not running */
	if (!FUNC4(dmcu))
		return;

	/* waitDMCUReadyForCmd */
	FUNC2(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0, 1, 10000);

	masterCmdData1.u32 = 0;
	masterCmdData1.bits.wait_loop = wait_loop_number;
	dmcu->cached_wait_loop_number = wait_loop_number;
	FUNC5(dmcu->ctx, FUNC0(MASTER_COMM_DATA_REG1), masterCmdData1.u32);

	/* setDMCUParam_Cmd */
	FUNC1(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0, PSR_SET_WAITLOOP);

	/* notifyDMCUMsg */
	FUNC1(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);
}