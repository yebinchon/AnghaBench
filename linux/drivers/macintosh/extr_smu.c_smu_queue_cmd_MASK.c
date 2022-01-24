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
struct smu_cmd {scalar_t__ data_len; scalar_t__ reply_len; int status; int /*<<< orphan*/  link; } ;
struct TYPE_2__ {int /*<<< orphan*/  db_irq; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cmd_cur; int /*<<< orphan*/  cmd_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ SMU_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* smu ; 
 int /*<<< orphan*/  smu_irq_inited ; 
 int /*<<< orphan*/  FUNC1 (struct smu_cmd*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct smu_cmd *cmd)
{
	unsigned long flags;

	if (smu == NULL)
		return -ENODEV;
	if (cmd->data_len > SMU_MAX_DATA ||
	    cmd->reply_len > SMU_MAX_DATA)
		return -EINVAL;

	cmd->status = 1;
	FUNC3(&smu->lock, flags);
	FUNC0(&cmd->link, &smu->cmd_list);
	if (smu->cmd_cur == NULL)
		FUNC2();
	FUNC4(&smu->lock, flags);

	/* Workaround for early calls when irq isn't available */
	if (!smu_irq_inited || !smu->db_irq)
		FUNC1(cmd);

	return 0;
}