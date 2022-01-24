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
struct iscsi_task {scalar_t__ sc; struct iscsi_iser_task* dd_data; } ;
struct iscsi_iser_task {scalar_t__ sc; scalar_t__ command_sent; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iscsi_iser_task*,int) ; 
 int FUNC1 (struct iscsi_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_iser_task*) ; 

__attribute__((used)) static int
FUNC3(struct iscsi_task *task)
{
	struct iscsi_iser_task *iser_task = task->dd_data;
	int ret;

	ret = FUNC1(task, &iser_task->desc);
	if (ret) {
		FUNC0("Failed to init task %p, err = %d\n",
			 iser_task, ret);
		return ret;
	}

	/* mgmt task */
	if (!task->sc)
		return 0;

	iser_task->command_sent = 0;
	FUNC2(iser_task);
	iser_task->sc = task->sc;

	return 0;
}