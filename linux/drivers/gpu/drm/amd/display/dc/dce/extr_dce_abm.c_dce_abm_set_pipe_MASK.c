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
struct dce_abm {int dummy; } ;
struct abm {int dmcu_is_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_COMM_CMD_REG ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG_BYTE0 ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG_BYTE1 ; 
 int /*<<< orphan*/  MASTER_COMM_CNTL_REG ; 
 int /*<<< orphan*/  MASTER_COMM_DATA_REG1 ; 
 int /*<<< orphan*/  MASTER_COMM_INTERRUPT ; 
 int /*<<< orphan*/  MCP_ABM_PIPE_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct dce_abm* FUNC4 (struct abm*) ; 

__attribute__((used)) static bool FUNC5(struct abm *abm, uint32_t controller_id)
{
	struct dce_abm *abm_dce = FUNC4(abm);
	uint32_t rampingBoundary = 0xFFFF;

	if (abm->dmcu_is_running == false)
		return true;

	FUNC2(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0,
			1, 80000);

	/* set ramping boundary */
	FUNC3(MASTER_COMM_DATA_REG1, rampingBoundary);

	/* setDMCUParam_Pipe */
	FUNC1(MASTER_COMM_CMD_REG,
			MASTER_COMM_CMD_REG_BYTE0, MCP_ABM_PIPE_SET,
			MASTER_COMM_CMD_REG_BYTE1, controller_id);

	/* notifyDMCUMsg */
	FUNC0(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);

	return true;
}