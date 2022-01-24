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
struct TYPE_2__ {int max_cmds; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  context; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  flags; } ;
struct mthca_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_CMD_USE_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mthca_dev *dev)
{
	int i;

	dev->cmd.flags &= ~MTHCA_CMD_USE_EVENTS;

	for (i = 0; i < dev->cmd.max_cmds; ++i)
		FUNC0(&dev->cmd.event_sem);

	FUNC1(dev->cmd.context);

	FUNC2(&dev->cmd.poll_sem);
}