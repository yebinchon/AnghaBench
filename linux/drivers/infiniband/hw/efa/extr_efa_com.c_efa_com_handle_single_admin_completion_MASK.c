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
typedef  int u16 ;
struct efa_comp_ctx {int /*<<< orphan*/  wait_event; int /*<<< orphan*/  comp_size; scalar_t__ user_cqe; int /*<<< orphan*/  comp_status; int /*<<< orphan*/  status; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  state; int /*<<< orphan*/  efa_dev; } ;
struct TYPE_2__ {int command; int /*<<< orphan*/  status; } ;
struct efa_admin_acq_entry {TYPE_1__ acq_common_descriptor; } ;

/* Variables and functions */
 int EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ; 
 int /*<<< orphan*/  EFA_AQ_STATE_POLLING_BIT ; 
 int /*<<< orphan*/  EFA_AQ_STATE_RUNNING_BIT ; 
 int /*<<< orphan*/  EFA_CMD_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct efa_comp_ctx* FUNC2 (struct efa_com_admin_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct efa_admin_acq_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct efa_com_admin_queue *aq,
						   struct efa_admin_acq_entry *cqe)
{
	struct efa_comp_ctx *comp_ctx;
	u16 cmd_id;

	cmd_id = cqe->acq_common_descriptor.command &
		 EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;

	comp_ctx = FUNC2(aq, cmd_id, false);
	if (!comp_ctx) {
		FUNC3(aq->efa_dev,
			  "comp_ctx is NULL. Changing the admin queue running state\n");
		FUNC0(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
		return;
	}

	comp_ctx->status = EFA_CMD_COMPLETED;
	comp_ctx->comp_status = cqe->acq_common_descriptor.status;
	if (comp_ctx->user_cqe)
		FUNC4(comp_ctx->user_cqe, cqe, comp_ctx->comp_size);

	if (!FUNC5(EFA_AQ_STATE_POLLING_BIT, &aq->state))
		FUNC1(&comp_ctx->wait_event);
}