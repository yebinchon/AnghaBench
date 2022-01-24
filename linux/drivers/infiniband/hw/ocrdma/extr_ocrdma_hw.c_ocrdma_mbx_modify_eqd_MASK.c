#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ocrdma_mqe {int dummy; } ;
struct TYPE_7__ {int num_eq; TYPE_2__* set_eqd; int /*<<< orphan*/  req; } ;
struct ocrdma_modify_eqd_req {TYPE_3__ cmd; } ;
struct TYPE_8__ {int prev_eqd; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct ocrdma_eq {TYPE_4__ aic_obj; TYPE_1__ q; } ;
struct ocrdma_dev {int dummy; } ;
struct TYPE_6__ {int delay_multiplier; scalar_t__ phase; int /*<<< orphan*/  eq_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_MODIFY_EQ_DELAY ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_COMMON ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_modify_eqd_req*) ; 
 struct ocrdma_modify_eqd_req* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev, struct ocrdma_eq *eq,
				 int num)
{
	int i, status;
	struct ocrdma_modify_eqd_req *cmd;

	cmd = FUNC1(OCRDMA_CMD_MODIFY_EQ_DELAY, sizeof(*cmd));
	if (!cmd)
		return -ENOMEM;

	FUNC2(&cmd->cmd.req, OCRDMA_CMD_MODIFY_EQ_DELAY,
			OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

	cmd->cmd.num_eq = num;
	for (i = 0; i < num; i++) {
		cmd->cmd.set_eqd[i].eq_id = eq[i].q.id;
		cmd->cmd.set_eqd[i].phase = 0;
		cmd->cmd.set_eqd[i].delay_multiplier =
				(eq[i].aic_obj.prev_eqd * 65)/100;
	}
	status = FUNC3(dev, (struct ocrdma_mqe *)cmd);

	FUNC0(cmd);
	return status;
}