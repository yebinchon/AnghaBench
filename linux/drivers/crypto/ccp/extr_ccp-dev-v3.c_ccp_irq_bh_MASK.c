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
typedef  int u32 ;
struct ccp_device {unsigned int cmd_q_count; scalar_t__ io_regs; struct ccp_cmd_queue* cmd_q; } ;
struct ccp_cmd_queue {int int_ok; int int_err; int int_status; int int_rcvd; int /*<<< orphan*/  int_queue; void* q_status; scalar_t__ cmd_error; scalar_t__ reg_int_status; void* q_int_status; scalar_t__ reg_status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ IRQ_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (struct ccp_device*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct ccp_device *ccp = (struct ccp_device *)data;
	struct ccp_cmd_queue *cmd_q;
	u32 q_int, status;
	unsigned int i;

	status = FUNC2(ccp->io_regs + IRQ_STATUS_REG);

	for (i = 0; i < ccp->cmd_q_count; i++) {
		cmd_q = &ccp->cmd_q[i];

		q_int = status & (cmd_q->int_ok | cmd_q->int_err);
		if (q_int) {
			cmd_q->int_status = status;
			cmd_q->q_status = FUNC2(cmd_q->reg_status);
			cmd_q->q_int_status = FUNC2(cmd_q->reg_int_status);

			/* On error, only save the first error value */
			if ((q_int & cmd_q->int_err) && !cmd_q->cmd_error)
				cmd_q->cmd_error = FUNC0(cmd_q->q_status);

			cmd_q->int_rcvd = 1;

			/* Acknowledge the interrupt and wake the kthread */
			FUNC3(q_int, ccp->io_regs + IRQ_STATUS_REG);
			FUNC4(&cmd_q->int_queue);
		}
	}
	FUNC1(ccp);
}