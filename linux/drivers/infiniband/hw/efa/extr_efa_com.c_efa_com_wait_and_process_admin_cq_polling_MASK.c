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
struct efa_comp_ctx {scalar_t__ status; int /*<<< orphan*/  comp_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_completion; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  state; TYPE_2__ stats; int /*<<< orphan*/  efa_dev; TYPE_1__ cq; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AQ_STATE_RUNNING_BIT ; 
 scalar_t__ EFA_CMD_SUBMITTED ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efa_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct efa_com_admin_queue*,struct efa_comp_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct efa_comp_ctx *comp_ctx,
						     struct efa_com_admin_queue *aq)
{
	unsigned long timeout;
	unsigned long flags;
	int err;

	timeout = jiffies + FUNC10(aq->completion_timeout);

	while (1) {
		FUNC7(&aq->cq.lock, flags);
		FUNC3(aq);
		FUNC8(&aq->cq.lock, flags);

		if (comp_ctx->status != EFA_CMD_SUBMITTED)
			break;

		if (FUNC9(timeout)) {
			FUNC5(
				aq->efa_dev,
				"Wait for completion (polling) timeout\n");
			/* EFA didn't have any completion */
			FUNC0(&aq->stats.no_completion);

			FUNC1(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
			err = -ETIME;
			goto out;
		}

		FUNC6(aq->poll_interval);
	}

	err = FUNC2(comp_ctx->comp_status);
out:
	FUNC4(aq, comp_ctx);
	return err;
}