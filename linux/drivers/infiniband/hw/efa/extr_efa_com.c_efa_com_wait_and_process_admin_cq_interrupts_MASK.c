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
struct efa_comp_ctx {scalar_t__ status; int /*<<< orphan*/  comp_status; int /*<<< orphan*/  cmd_opcode; int /*<<< orphan*/  wait_event; } ;
struct TYPE_6__ {int /*<<< orphan*/  cc; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  cc; int /*<<< orphan*/  pc; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_completion; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  state; TYPE_3__ cq; TYPE_2__ sq; int /*<<< orphan*/  efa_dev; TYPE_1__ stats; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AQ_STATE_RUNNING_BIT ; 
 scalar_t__ EFA_CMD_COMPLETED ; 
 scalar_t__ EFA_CMD_SUBMITTED ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efa_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct efa_com_admin_queue*,struct efa_comp_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct efa_comp_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct efa_comp_ctx *comp_ctx,
							struct efa_com_admin_queue *aq)
{
	unsigned long flags;
	int err;

	FUNC10(&comp_ctx->wait_event,
				    FUNC9(aq->completion_timeout));

	/*
	 * In case the command wasn't completed find out the root cause.
	 * There might be 2 kinds of errors
	 * 1) No completion (timeout reached)
	 * 2) There is completion but the device didn't get any msi-x interrupt.
	 */
	if (comp_ctx->status == EFA_CMD_SUBMITTED) {
		FUNC7(&aq->cq.lock, flags);
		FUNC4(aq);
		FUNC8(&aq->cq.lock, flags);

		FUNC0(&aq->stats.no_completion);

		if (comp_ctx->status == EFA_CMD_COMPLETED)
			FUNC6(
				aq->efa_dev,
				"The device sent a completion but the driver didn't receive any MSI-X interrupt for admin cmd %s(%d) status %d (ctx: 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\n",
				FUNC2(comp_ctx->cmd_opcode),
				comp_ctx->cmd_opcode, comp_ctx->status,
				comp_ctx, aq->sq.pc, aq->sq.cc, aq->cq.cc);
		else
			FUNC6(
				aq->efa_dev,
				"The device didn't send any completion for admin cmd %s(%d) status %d (ctx 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\n",
				FUNC2(comp_ctx->cmd_opcode),
				comp_ctx->cmd_opcode, comp_ctx->status,
				comp_ctx, aq->sq.pc, aq->sq.cc, aq->cq.cc);

		FUNC1(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
		err = -ETIME;
		goto out;
	}

	err = FUNC3(comp_ctx->comp_status);
out:
	FUNC5(aq, comp_ctx);
	return err;
}