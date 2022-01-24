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
struct efa_comp_ctx {int /*<<< orphan*/  comp_status; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  avail_cmds; int /*<<< orphan*/  efa_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  opcode; } ;
struct efa_admin_aq_entry {TYPE_1__ aq_common_descriptor; } ;
struct efa_admin_acq_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efa_comp_ctx*) ; 
 int FUNC1 (struct efa_comp_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct efa_comp_ctx* FUNC4 (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,size_t,struct efa_admin_acq_entry*,size_t) ; 
 int FUNC5 (struct efa_comp_ctx*,struct efa_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct efa_com_admin_queue *aq,
		     struct efa_admin_aq_entry *cmd,
		     size_t cmd_size,
		     struct efa_admin_acq_entry *comp,
		     size_t comp_size)
{
	struct efa_comp_ctx *comp_ctx;
	int err;

	FUNC8();

	/* In case of queue FULL */
	FUNC2(&aq->avail_cmds);

	FUNC6(aq->efa_dev, "%s (opcode %d)\n",
		  FUNC3(cmd->aq_common_descriptor.opcode),
		  cmd->aq_common_descriptor.opcode);
	comp_ctx = FUNC4(aq, cmd, cmd_size, comp, comp_size);
	if (FUNC0(comp_ctx)) {
		FUNC7(
			aq->efa_dev,
			"Failed to submit command %s (opcode %u) err %ld\n",
			FUNC3(cmd->aq_common_descriptor.opcode),
			cmd->aq_common_descriptor.opcode, FUNC1(comp_ctx));

		FUNC9(&aq->avail_cmds);
		return FUNC1(comp_ctx);
	}

	err = FUNC5(comp_ctx, aq);
	if (err)
		FUNC7(
			aq->efa_dev,
			"Failed to process command %s (opcode %u) comp_status %d err %d\n",
			FUNC3(cmd->aq_common_descriptor.opcode),
			cmd->aq_common_descriptor.opcode, comp_ctx->comp_status,
			err);

	FUNC9(&aq->avail_cmds);

	return err;
}