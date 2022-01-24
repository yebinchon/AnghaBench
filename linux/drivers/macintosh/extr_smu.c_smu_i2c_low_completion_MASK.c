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
struct smu_i2c_cmd {int stage; int* pdata; scalar_t__ retries; scalar_t__ read; } ;
struct smu_cmd {scalar_t__ status; int reply_len; int* reply_buf; int* data_buf; int data_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_timer; struct smu_i2c_cmd* cmd_i2c_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* smu ; 
 int /*<<< orphan*/  FUNC5 (struct smu_i2c_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smu_irq_inited ; 
 int /*<<< orphan*/  FUNC7 (struct smu_cmd*) ; 

__attribute__((used)) static void FUNC8(struct smu_cmd *scmd, void *misc)
{
	struct smu_i2c_cmd	*cmd = misc;
	int			fail = 0;

	FUNC1("SMU: i2c compl. stage=%d status=%x pdata[0]=%x rlen: %x\n",
		cmd->stage, scmd->status, cmd->pdata[0], scmd->reply_len);

	/* Check for possible status */
	if (scmd->status < 0)
		fail = 1;
	else if (cmd->read) {
		if (cmd->stage == 0)
			fail = cmd->pdata[0] != 0;
		else
			fail = cmd->pdata[0] >= 0x80;
	} else {
		fail = cmd->pdata[0] != 0;
	}

	/* Handle failures by requeuing command, after 5ms interval
	 */
	if (fail && --cmd->retries > 0) {
		FUNC1("SMU: i2c failure, starting timer...\n");
		FUNC0(cmd != smu->cmd_i2c_cur);
		if (!smu_irq_inited) {
			FUNC2(5);
			FUNC6(NULL);
			return;
		}
		FUNC3(&smu->i2c_timer, jiffies + FUNC4(5));
		return;
	}

	/* If failure or stage 1, command is complete */
	if (fail || cmd->stage != 0) {
		FUNC5(cmd, fail);
		return;
	}

	FUNC1("SMU: going to stage 1\n");

	/* Ok, initial command complete, now poll status */
	scmd->reply_buf = cmd->pdata;
	scmd->reply_len = sizeof(cmd->pdata);
	scmd->data_buf = cmd->pdata;
	scmd->data_len = 1;
	cmd->pdata[0] = 0;
	cmd->stage = 1;
	cmd->retries = 20;
	FUNC7(scmd);
}